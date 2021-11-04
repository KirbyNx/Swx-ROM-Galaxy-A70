.class public Lcom/android/server/usage/AppTimeLimitController;
.super Ljava/lang/Object;
.source "AppTimeLimitController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;,
        Lcom/android/server/usage/AppTimeLimitController$MyHandler;,
        Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;,
        Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;,
        Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;,
        Lcom/android/server/usage/AppTimeLimitController$UsageGroup;,
        Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;,
        Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;,
        Lcom/android/server/usage/AppTimeLimitController$UserData;,
        Lcom/android/server/usage/AppTimeLimitController$Lock;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_OBSERVER_PER_UID:J = 0x3e8L

.field private static final ONE:Ljava/lang/Integer;

.field private static final ONE_MINUTE:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "AppTimeLimitController"

.field static final mHistoryCollector:Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;


# instance fields
.field private final mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

.field private mListener:Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

.field private final mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

.field private final mObserverApps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/AppTimeLimitController$UserData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 74
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/usage/AppTimeLimitController;->ONE:Ljava/lang/Integer;

    .line 89
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;

    invoke-direct {v0}, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;-><init>()V

    sput-object v0, Lcom/android/server/usage/AppTimeLimitController;->mHistoryCollector:Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;Landroid/os/Looper;)V
    .registers 5
    .param p1, "listener"    # Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$Lock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$Lock;-><init>(Lcom/android/server/usage/AppTimeLimitController$1;)V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    .line 600
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;-><init>(Lcom/android/server/usage/AppTimeLimitController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    .line 601
    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController;->mListener:Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

    .line 602
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/usage/AppTimeLimitController;
    .param p1, "x1"    # Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
    .param p2, "x2"    # J

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->postCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usage/AppTimeLimitController;
    .param p1, "x1"    # Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->postInformLimitReachedListenerLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usage/AppTimeLimitController;
    .param p1, "x1"    # Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->cancelCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usage/AppTimeLimitController;

    .line 54
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mListener:Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usage/AppTimeLimitController;
    .param p1, "x1"    # Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->cancelInformSessionEndListener(Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;J)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/usage/AppTimeLimitController;
    .param p1, "x1"    # Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    .param p2, "x2"    # J

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->postInformSessionEndListenerLocked(Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$Lock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usage/AppTimeLimitController;

    .line 54
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    return-object v0
.end method

.method private cancelCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V
    .registers 4
    .param p1, "group"    # Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    .line 1065
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1066
    return-void
.end method

.method private cancelInformSessionEndListener(Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;)V
    .registers 4
    .param p1, "group"    # Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    .line 1054
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1055
    return-void
.end method

.method private getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .registers 5
    .param p1, "uid"    # I

    .line 718
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    .line 719
    .local v0, "appData":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    if-nez v0, :cond_16

    .line 720
    new-instance v1, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;-><init>(Lcom/android/server/usage/AppTimeLimitController;ILcom/android/server/usage/AppTimeLimitController$1;)V

    move-object v0, v1

    .line 721
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 723
    :cond_16
    return-object v0
.end method

.method private getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;
    .registers 5
    .param p1, "userId"    # I

    .line 707
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    .line 708
    .local v0, "userData":Lcom/android/server/usage/AppTimeLimitController$UserData;
    if-nez v0, :cond_16

    .line 709
    new-instance v1, Lcom/android/server/usage/AppTimeLimitController$UserData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/usage/AppTimeLimitController$UserData;-><init>(Lcom/android/server/usage/AppTimeLimitController;ILcom/android/server/usage/AppTimeLimitController$1;)V

    move-object v0, v1

    .line 710
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 712
    :cond_16
    return-object v0
.end method

.method private noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V
    .registers 9
    .param p1, "user"    # Lcom/android/server/usage/AppTimeLimitController$UserData;
    .param p2, "group"    # Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
    .param p3, "currentTimeMs"    # J

    .line 740
    iget-object v0, p2, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    array-length v0, v0

    .line 741
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_18

    .line 742
    iget-object v2, p1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    iget-object v3, p2, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 744
    invoke-virtual {p2, p3, p4}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStart(J)V

    .line 741
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 747
    .end local v1    # "i":I
    :cond_18
    return-void
.end method

.method private postCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V
    .registers 6
    .param p1, "group"    # Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
    .param p2, "timeout"    # J

    .line 1059
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1061
    return-void
.end method

.method private postInformLimitReachedListenerLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V
    .registers 4
    .param p1, "group"    # Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    .line 1041
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1043
    return-void
.end method

.method private postInformSessionEndListenerLocked(Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;J)V
    .registers 6
    .param p1, "group"    # Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    .param p2, "timeout"    # J

    .line 1047
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    .line 1048
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1047
    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1050
    return-void
.end method


# virtual methods
.method public addAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V
    .registers 30
    .param p1, "requestingUid"    # I
    .param p2, "observerId"    # I
    .param p3, "observed"    # [Ljava/lang/String;
    .param p4, "timeLimit"    # J
    .param p6, "timeUsed"    # J
    .param p8, "callbackIntent"    # Landroid/app/PendingIntent;
    .param p9, "userId"    # I

    .line 864
    move-object/from16 v12, p0

    move/from16 v13, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_91

    .line 867
    iget-object v14, v12, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v14

    .line 868
    move/from16 v15, p9

    :try_start_11
    invoke-direct {v12, v15}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v0

    .line 869
    .local v0, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v1

    move-object v11, v1

    .line 870
    .local v11, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    iget-object v1, v11, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    move-object/from16 v16, v1

    .line 871
    .local v16, "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    if-eqz v16, :cond_29

    .line 873
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->remove()V

    .line 876
    :cond_29
    iget-object v1, v11, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v9, v1

    .line 877
    .local v9, "observerIdCount":I
    int-to-long v1, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getAppUsageLimitObserverPerUidLimit()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_6e

    .line 881
    new-instance v17, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 882
    cmp-long v1, p6, p4

    if-ltz v1, :cond_43

    const/4 v1, 0x0

    move-object/from16 v18, v1

    goto :goto_45

    :cond_43
    move-object/from16 v18, p8

    :goto_45
    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v11

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move/from16 v19, v9

    .end local v9    # "observerIdCount":I
    .local v19, "observerIdCount":I
    move-wide/from16 v9, p6

    move-object v15, v11

    .end local v11    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .local v15, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    move-object/from16 v11, v18

    invoke-direct/range {v1 .. v11}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JJLandroid/app/PendingIntent;)V

    move-object/from16 v1, v17

    .line 883
    .end local v16    # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    .local v1, "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    iget-object v2, v15, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v13, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 889
    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->addUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 890
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v2

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/android/server/usage/AppTimeLimitController;->noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    .line 891
    .end local v0    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v1    # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    .end local v15    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v19    # "observerIdCount":I
    monitor-exit v14

    .line 892
    return-void

    .line 878
    .restart local v0    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .restart local v9    # "observerIdCount":I
    .restart local v11    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .restart local v16    # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    :cond_6e
    move/from16 v19, v9

    move-object v15, v11

    .end local v9    # "observerIdCount":I
    .end local v11    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .restart local v15    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .restart local v19    # "observerIdCount":I
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many app usage observers added by uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7d
    .catchall {:try_start_11 .. :try_end_7d} :catchall_8a

    move/from16 v3, p1

    :try_start_7f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/usage/AppTimeLimitController;
    .end local p1    # "requestingUid":I
    .end local p2    # "observerId":I
    .end local p3    # "observed":[Ljava/lang/String;
    .end local p4    # "timeLimit":J
    .end local p6    # "timeUsed":J
    .end local p8    # "callbackIntent":Landroid/app/PendingIntent;
    .end local p9    # "userId":I
    throw v1

    .line 891
    .end local v0    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v15    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v16    # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    .end local v19    # "observerIdCount":I
    .restart local p0    # "this":Lcom/android/server/usage/AppTimeLimitController;
    .restart local p1    # "requestingUid":I
    .restart local p2    # "observerId":I
    .restart local p3    # "observed":[Ljava/lang/String;
    .restart local p4    # "timeLimit":J
    .restart local p6    # "timeUsed":J
    .restart local p8    # "callbackIntent":Landroid/app/PendingIntent;
    .restart local p9    # "userId":I
    :catchall_8a
    move-exception v0

    move/from16 v3, p1

    :goto_8d
    monitor-exit v14
    :try_end_8e
    .catchall {:try_start_7f .. :try_end_8e} :catchall_8f

    throw v0

    :catchall_8f
    move-exception v0

    goto :goto_8d

    .line 865
    :cond_91
    move/from16 v3, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time limit must be >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    .registers 26
    .param p1, "requestingUid"    # I
    .param p2, "observerId"    # I
    .param p3, "observed"    # [Ljava/lang/String;
    .param p4, "timeLimit"    # J
    .param p6, "callbackIntent"    # Landroid/app/PendingIntent;
    .param p7, "userId"    # I

    .line 755
    move-object/from16 v10, p0

    move/from16 v11, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_82

    .line 758
    iget-object v12, v10, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v12

    .line 759
    move/from16 v13, p7

    :try_start_11
    invoke-direct {v10, v13}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v0

    .line 760
    .local v0, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v1

    move-object v14, v1

    .line 761
    .local v14, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    iget-object v1, v14, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    move-object v15, v1

    .line 762
    .local v15, "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    if-eqz v15, :cond_28

    .line 764
    invoke-virtual {v15}, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;->remove()V

    .line 767
    :cond_28
    iget-object v1, v14, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v9, v1

    .line 768
    .local v9, "observerIdCount":I
    int-to-long v1, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getAppUsageObserverPerUidLimit()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_60

    .line 772
    new-instance v16, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v14

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move/from16 v17, v9

    .end local v9    # "observerIdCount":I
    .local v17, "observerIdCount":I
    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;)V

    move-object/from16 v1, v16

    .line 774
    .end local v15    # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    .local v1, "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    iget-object v2, v14, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v11, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 780
    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->addUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 781
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v2

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/android/server/usage/AppTimeLimitController;->noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    .line 782
    .end local v0    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v1    # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    .end local v14    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v17    # "observerIdCount":I
    monitor-exit v12

    .line 783
    return-void

    .line 769
    .restart local v0    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .restart local v9    # "observerIdCount":I
    .restart local v14    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .restart local v15    # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    :cond_60
    move/from16 v17, v9

    .end local v9    # "observerIdCount":I
    .restart local v17    # "observerIdCount":I
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many app usage observers added by uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6e
    .catchall {:try_start_11 .. :try_end_6e} :catchall_7b

    move/from16 v3, p1

    :try_start_70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/usage/AppTimeLimitController;
    .end local p1    # "requestingUid":I
    .end local p2    # "observerId":I
    .end local p3    # "observed":[Ljava/lang/String;
    .end local p4    # "timeLimit":J
    .end local p6    # "callbackIntent":Landroid/app/PendingIntent;
    .end local p7    # "userId":I
    throw v1

    .line 782
    .end local v0    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v14    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v15    # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    .end local v17    # "observerIdCount":I
    .restart local p0    # "this":Lcom/android/server/usage/AppTimeLimitController;
    .restart local p1    # "requestingUid":I
    .restart local p2    # "observerId":I
    .restart local p3    # "observed":[Ljava/lang/String;
    .restart local p4    # "timeLimit":J
    .restart local p6    # "callbackIntent":Landroid/app/PendingIntent;
    .restart local p7    # "userId":I
    :catchall_7b
    move-exception v0

    move/from16 v3, p1

    :goto_7e
    monitor-exit v12
    :try_end_7f
    .catchall {:try_start_70 .. :try_end_7f} :catchall_80

    throw v0

    :catchall_80
    move-exception v0

    goto :goto_7e

    .line 756
    :cond_82
    move/from16 v3, p1

    move/from16 v13, p7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time limit must be >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .registers 30
    .param p1, "requestingUid"    # I
    .param p2, "observerId"    # I
    .param p3, "observed"    # [Ljava/lang/String;
    .param p4, "timeLimit"    # J
    .param p6, "sessionThresholdTime"    # J
    .param p8, "limitReachedCallbackIntent"    # Landroid/app/PendingIntent;
    .param p9, "sessionEndCallbackIntent"    # Landroid/app/PendingIntent;
    .param p10, "userId"    # I

    .line 812
    move-object/from16 v13, p0

    move/from16 v14, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_99

    .line 815
    iget-object v15, v13, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v15

    .line 816
    move/from16 v12, p10

    :try_start_11
    invoke-direct {v13, v12}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v0

    .line 817
    .local v0, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v1

    move-object v10, v1

    .line 818
    .local v10, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    iget-object v1, v10, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    move-object/from16 v16, v1

    .line 819
    .local v16, "group":Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    if-eqz v16, :cond_29

    .line 821
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->remove()V

    .line 824
    :cond_29
    iget-object v1, v10, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v11, v1

    .line 825
    .local v11, "observerIdCount":I
    int-to-long v1, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getUsageSessionObserverPerUidLimit()J

    move-result-wide v3
    :try_end_35
    .catchall {:try_start_11 .. :try_end_35} :catchall_91

    cmp-long v1, v1, v3

    if-gez v1, :cond_72

    .line 829
    :try_start_39
    new-instance v17, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_6d

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v10

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p8

    move-object v13, v10

    move/from16 v18, v11

    .end local v10    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v11    # "observerIdCount":I
    .local v13, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .local v18, "observerIdCount":I
    move-wide/from16 v10, p6

    move-object/from16 v12, p9

    :try_start_50
    invoke-direct/range {v1 .. v12}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;JLandroid/app/PendingIntent;)V

    move-object/from16 v1, v17

    .line 831
    .end local v16    # "group":Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    .local v1, "group":Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    iget-object v2, v13, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v14, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 833
    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->addUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 834
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v2
    :try_end_61
    .catchall {:try_start_50 .. :try_end_61} :catchall_69

    move-object/from16 v4, p0

    move-object v5, v13

    .end local v13    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .local v5, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    :try_start_64
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/server/usage/AppTimeLimitController;->noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    .line 835
    .end local v0    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v1    # "group":Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    .end local v5    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v18    # "observerIdCount":I
    monitor-exit v15

    .line 836
    return-void

    .line 835
    :catchall_69
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_6f

    :catchall_6d
    move-exception v0

    move-object v4, v13

    :goto_6f
    move/from16 v3, p1

    goto :goto_95

    .line 826
    .restart local v0    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .restart local v10    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .restart local v11    # "observerIdCount":I
    .restart local v16    # "group":Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    :cond_72
    move-object v5, v10

    move/from16 v18, v11

    move-object v4, v13

    .end local v10    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v11    # "observerIdCount":I
    .restart local v5    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .restart local v18    # "observerIdCount":I
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many app usage observers added by uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_82
    .catchall {:try_start_64 .. :try_end_82} :catchall_8f

    move/from16 v3, p1

    :try_start_84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/usage/AppTimeLimitController;
    .end local p1    # "requestingUid":I
    .end local p2    # "observerId":I
    .end local p3    # "observed":[Ljava/lang/String;
    .end local p4    # "timeLimit":J
    .end local p6    # "sessionThresholdTime":J
    .end local p8    # "limitReachedCallbackIntent":Landroid/app/PendingIntent;
    .end local p9    # "sessionEndCallbackIntent":Landroid/app/PendingIntent;
    .end local p10    # "userId":I
    throw v1

    .line 835
    .end local v0    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v5    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v16    # "group":Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    .end local v18    # "observerIdCount":I
    .restart local p0    # "this":Lcom/android/server/usage/AppTimeLimitController;
    .restart local p1    # "requestingUid":I
    .restart local p2    # "observerId":I
    .restart local p3    # "observed":[Ljava/lang/String;
    .restart local p4    # "timeLimit":J
    .restart local p6    # "sessionThresholdTime":J
    .restart local p8    # "limitReachedCallbackIntent":Landroid/app/PendingIntent;
    .restart local p9    # "sessionEndCallbackIntent":Landroid/app/PendingIntent;
    .restart local p10    # "userId":I
    :catchall_8f
    move-exception v0

    goto :goto_6f

    :catchall_91
    move-exception v0

    move/from16 v3, p1

    move-object v4, v13

    :goto_95
    monitor-exit v15
    :try_end_96
    .catchall {:try_start_84 .. :try_end_96} :catchall_97

    throw v0

    :catchall_97
    move-exception v0

    goto :goto_95

    .line 813
    :cond_99
    move/from16 v3, p1

    move-object v4, v13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time limit must be >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dump([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 12
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1069
    if-eqz p1, :cond_44

    .line 1070
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    array-length v1, p1

    if-ge v0, v1, :cond_44

    .line 1071
    aget-object v1, p1, v0

    .line 1072
    .local v1, "arg":Ljava/lang/String;
    const-string v2, "actives"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1073
    iget-object v2, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v2

    .line 1074
    :try_start_13
    iget-object v3, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1075
    .local v3, "nUsers":I
    const/4 v4, 0x0

    .local v4, "user":I
    :goto_1a
    if-ge v4, v3, :cond_3c

    .line 1076
    iget-object v5, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    .line 1077
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/usage/AppTimeLimitController$UserData;

    iget-object v5, v5, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    .line 1078
    .local v5, "actives":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1079
    .local v6, "nActive":I
    const/4 v7, 0x0

    .local v7, "active":I
    :goto_2b
    if-ge v7, v6, :cond_39

    .line 1080
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1079
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    .line 1075
    .end local v5    # "actives":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "nActive":I
    .end local v7    # "active":I
    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 1083
    .end local v3    # "nUsers":I
    .end local v4    # "user":I
    :cond_3c
    monitor-exit v2

    .line 1084
    return-void

    .line 1083
    :catchall_3e
    move-exception v3

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_13 .. :try_end_40} :catchall_3e

    throw v3

    .line 1070
    .end local v1    # "arg":Ljava/lang/String;
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1089
    .end local v0    # "i":I
    :cond_44
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 1090
    :try_start_47
    const-string v1, "\n  App Time Limits"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1091
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1092
    .local v1, "nUsers":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_53
    if-ge v2, v1, :cond_68

    .line 1093
    const-string v3, "   User "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1094
    iget-object v3, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/AppTimeLimitController$UserData;

    invoke-virtual {v3, p2}, Lcom/android/server/usage/AppTimeLimitController$UserData;->dump(Ljava/io/PrintWriter;)V

    .line 1092
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 1096
    .end local v2    # "i":I
    :cond_68
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1097
    iget-object v2, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1098
    .local v2, "nObserverApps":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_72
    if-ge v3, v2, :cond_87

    .line 1099
    const-string v4, "   Observer App "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1100
    iget-object v4, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    invoke-virtual {v4, p2}, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->dump(Ljava/io/PrintWriter;)V

    .line 1098
    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    .line 1102
    .end local v1    # "nUsers":I
    .end local v2    # "nObserverApps":I
    .end local v3    # "i":I
    :cond_87
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_47 .. :try_end_88} :catchall_8e

    .line 1106
    sget-object v0, Lcom/android/server/usage/AppTimeLimitController;->mHistoryCollector:Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;

    invoke-virtual {v0, p2}, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->dumpLog(Ljava/io/PrintWriter;)V

    .line 1109
    return-void

    .line 1102
    :catchall_8e
    move-exception v1

    :try_start_8f
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw v1
.end method

.method getAppUsageGroup(II)Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    .registers 5
    .param p1, "observerAppUid"    # I
    .param p2, "observerId"    # I

    .line 636
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 637
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    monitor-exit v0

    return-object v1

    .line 638
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 665
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 666
    :try_start_3
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v1

    .line 667
    .local v1, "userData":Lcom/android/server/usage/AppTimeLimitController$UserData;
    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 668
    monitor-exit v0

    return-object v2

    .line 671
    :cond_10
    iget-object v3, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->observedMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 672
    .local v3, "usageGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usage/AppTimeLimitController$UsageGroup;>;"
    if-eqz v3, :cond_91

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_22

    goto/16 :goto_91

    .line 676
    :cond_22
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 677
    .local v4, "usageLimitGroups":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_28
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_56

    .line 678
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    if-eqz v6, :cond_53

    .line 679
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 680
    .local v6, "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3d
    iget-object v8, v6, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->mObserved:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_53

    .line 681
    iget-object v8, v6, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->mObserved:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_50

    .line 682
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 683
    goto :goto_53

    .line 680
    :cond_50
    add-int/lit8 v7, v7, 0x1

    goto :goto_3d

    .line 677
    .end local v6    # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    .end local v7    # "j":I
    :cond_53
    :goto_53
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 688
    .end local v5    # "i":I
    :cond_56
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 689
    monitor-exit v0

    return-object v2

    .line 692
    :cond_5e
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 693
    .local v2, "smallestGroup":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    const/4 v5, 0x1

    .restart local v5    # "i":I
    :goto_66
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_82

    .line 694
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 695
    .local v6, "otherGroup":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    invoke-virtual {v6}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->getUsageRemaining()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->getUsageRemaining()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_7f

    .line 696
    move-object v2, v6

    .line 693
    .end local v6    # "otherGroup":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    :cond_7f
    add-int/lit8 v5, v5, 0x1

    goto :goto_66

    .line 699
    .end local v5    # "i":I
    :cond_82
    new-instance v5, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;

    .line 700
    invoke-virtual {v2}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->getTotaUsageLimit()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->getUsageRemaining()J

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;-><init>(JJ)V

    monitor-exit v0

    .line 699
    return-object v5

    .line 673
    .end local v2    # "smallestGroup":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    .end local v4    # "usageLimitGroups":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;>;"
    :cond_91
    :goto_91
    monitor-exit v0

    return-object v2

    .line 701
    .end local v1    # "userData":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v3    # "usageGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usage/AppTimeLimitController$UsageGroup;>;"
    :catchall_93
    move-exception v1

    monitor-exit v0
    :try_end_95
    .catchall {:try_start_3 .. :try_end_95} :catchall_93

    throw v1
.end method

.method getAppUsageLimitGroup(II)Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    .registers 5
    .param p1, "observerAppUid"    # I
    .param p2, "observerId"    # I

    .line 651
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 652
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    monitor-exit v0

    return-object v1

    .line 654
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method protected getAppUsageLimitObserverPerUidLimit()J
    .registers 3

    .line 625
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method protected getAppUsageObserverPerUidLimit()J
    .registers 3

    .line 613
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method protected getMinTimeLimit()J
    .registers 3

    .line 631
    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method getSessionUsageGroup(II)Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    .registers 5
    .param p1, "observerAppUid"    # I
    .param p2, "observerId"    # I

    .line 643
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 644
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    monitor-exit v0

    return-object v1

    .line 646
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method protected getUptimeMillis()J
    .registers 3

    .line 607
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getUsageSessionObserverPerUidLimit()J
    .registers 3

    .line 619
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public noteUsageStart(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 973
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(Ljava/lang/String;IJ)V

    .line 974
    return-void
.end method

.method public noteUsageStart(Ljava/lang/String;IJ)V
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "timeAgoMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 922
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 923
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v1

    .line 926
    .local v1, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    iget-object v2, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    .line 929
    .local v2, "index":I
    sget-object v3, Lcom/android/server/usage/AppTimeLimitController;->mHistoryCollector:Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[START] Usage entity ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] became active Caller="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    .line 930
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 929
    invoke-virtual {v3, v4}, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->addLog(Ljava/lang/String;)V

    .line 933
    if-ltz v2, :cond_71

    .line 934
    iget-object v3, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 935
    .local v3, "count":Ljava/lang/Integer;
    if-eqz v3, :cond_71

    .line 937
    iget-object v4, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 940
    sget-object v4, Lcom/android/server/usage/AppTimeLimitController;->mHistoryCollector:Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[START] set ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->addLog(Ljava/lang/String;)V

    .line 943
    monitor-exit v0

    return-void

    .line 946
    .end local v3    # "count":Ljava/lang/Integer;
    :cond_71
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v3

    .line 948
    .local v3, "currentTime":J
    iget-object v5, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    sget-object v6, Lcom/android/server/usage/AppTimeLimitController;->ONE:Ljava/lang/Integer;

    invoke-virtual {v5, p1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    sget-object v5, Lcom/android/server/usage/AppTimeLimitController;->mHistoryCollector:Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[START] put ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] value=1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->addLog(Ljava/lang/String;)V

    .line 955
    iget-object v5, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->observedMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 956
    .local v5, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usage/AppTimeLimitController$UsageGroup;>;"
    if-nez v5, :cond_a3

    monitor-exit v0

    return-void

    .line 958
    :cond_a3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 959
    .local v6, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_a8
    if-ge v7, v6, :cond_b8

    .line 960
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    .line 961
    .local v8, "group":Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
    sub-long v9, v3, p3

    invoke-virtual {v8, v9, v10, v3, v4}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStart(JJ)V

    .line 959
    .end local v8    # "group":Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
    add-int/lit8 v7, v7, 0x1

    goto :goto_a8

    .line 963
    .end local v1    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v2    # "index":I
    .end local v3    # "currentTime":J
    .end local v5    # "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usage/AppTimeLimitController$UsageGroup;>;"
    .end local v6    # "size":I
    .end local v7    # "i":I
    :cond_b8
    monitor-exit v0

    .line 964
    return-void

    .line 963
    :catchall_ba
    move-exception v1

    monitor-exit v0
    :try_end_bc
    .catchall {:try_start_3 .. :try_end_bc} :catchall_ba

    throw v1
.end method

.method public noteUsageStop(Ljava/lang/String;I)V
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 983
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 984
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v1

    .line 989
    .local v1, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    sget-object v2, Lcom/android/server/usage/AppTimeLimitController;->mHistoryCollector:Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[STOP] Usage entity ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] became inactive Caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    .line 990
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 989
    invoke-virtual {v2, v3}, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->addLog(Ljava/lang/String;)V

    .line 994
    iget-object v2, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    .line 995
    .local v2, "index":I
    if-ltz v2, :cond_bc

    .line 1006
    iget-object v3, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1007
    .local v3, "count":Ljava/lang/Integer;
    sget-object v4, Lcom/android/server/usage/AppTimeLimitController;->ONE:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_77

    .line 1009
    iget-object v4, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1012
    sget-object v4, Lcom/android/server/usage/AppTimeLimitController;->mHistoryCollector:Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[STOP] set ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->addLog(Ljava/lang/String;)V

    .line 1015
    monitor-exit v0

    return-void

    .line 1018
    :cond_77
    iget-object v4, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1021
    sget-object v4, Lcom/android/server/usage/AppTimeLimitController;->mHistoryCollector:Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[STOP] remove ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] from currentlyActive list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->addLog(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v4

    .line 1027
    .local v4, "currentTime":J
    iget-object v6, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->observedMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1028
    .local v6, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usage/AppTimeLimitController$UsageGroup;>;"
    if-nez v6, :cond_a7

    monitor-exit v0

    return-void

    .line 1030
    :cond_a7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1031
    .local v7, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_ac
    if-ge v8, v7, :cond_ba

    .line 1032
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    .line 1033
    .local v9, "group":Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
    invoke-virtual {v9, v4, v5}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStop(J)V

    .line 1031
    .end local v9    # "group":Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
    add-int/lit8 v8, v8, 0x1

    goto :goto_ac

    .line 1036
    .end local v1    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v2    # "index":I
    .end local v3    # "count":Ljava/lang/Integer;
    .end local v4    # "currentTime":J
    .end local v6    # "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usage/AppTimeLimitController$UsageGroup;>;"
    .end local v7    # "size":I
    .end local v8    # "i":I
    :cond_ba
    monitor-exit v0

    .line 1037
    return-void

    .line 998
    .restart local v1    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .restart local v2    # "index":I
    :cond_bc
    sget-object v3, Lcom/android/server/usage/AppTimeLimitController;->mHistoryCollector:Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[IllegalArgumentException] !! Unable to stop usage for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", not in use. Index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->addLog(Ljava/lang/String;)V

    .line 1002
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to stop usage for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", not in use"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/usage/AppTimeLimitController;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "userId":I
    throw v3

    .line 1036
    .end local v1    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v2    # "index":I
    .restart local p0    # "this":Lcom/android/server/usage/AppTimeLimitController;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "userId":I
    :catchall_f6
    move-exception v1

    monitor-exit v0
    :try_end_f8
    .catchall {:try_start_3 .. :try_end_f8} :catchall_f6

    throw v1
.end method

.method public onUserRemoved(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 728
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 730
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 731
    monitor-exit v0

    .line 732
    return-void

    .line 731
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public removeAppUsageLimitObserver(III)V
    .registers 7
    .param p1, "requestingUid"    # I
    .param p2, "observerId"    # I
    .param p3, "userId"    # I

    .line 903
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 904
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v1

    .line 905
    .local v1, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    iget-object v2, v1, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 906
    .local v2, "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    if-eqz v2, :cond_14

    .line 908
    invoke-virtual {v2}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->remove()V

    .line 910
    .end local v1    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v2    # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    :cond_14
    monitor-exit v0

    .line 911
    return-void

    .line 910
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public removeAppUsageObserver(III)V
    .registers 7
    .param p1, "requestingUid"    # I
    .param p2, "observerId"    # I
    .param p3, "userId"    # I

    .line 793
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 794
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v1

    .line 795
    .local v1, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    iget-object v2, v1, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    .line 796
    .local v2, "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    if-eqz v2, :cond_14

    .line 798
    invoke-virtual {v2}, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;->remove()V

    .line 800
    .end local v1    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v2    # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    :cond_14
    monitor-exit v0

    .line 801
    return-void

    .line 800
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public removeUsageSessionObserver(III)V
    .registers 7
    .param p1, "requestingUid"    # I
    .param p2, "observerId"    # I
    .param p3, "userId"    # I

    .line 847
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 848
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v1

    .line 849
    .local v1, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    iget-object v2, v1, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    .line 850
    .local v2, "group":Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    if-eqz v2, :cond_14

    .line 852
    invoke-virtual {v2}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->remove()V

    .line 854
    .end local v1    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v2    # "group":Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    :cond_14
    monitor-exit v0

    .line 855
    return-void

    .line 854
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method
