.class Lcom/android/server/location/LocationManagerService$UpdateRecord;
.super Ljava/lang/Object;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateRecord"
.end annotation


# instance fields
.field isFreezed:Z

.field private mExpirationRealtimeMs:J

.field private mIsForegroundUid:Z

.field private mLastFixBroadcast:Landroid/location/Location;

.field final mProvider:Ljava/lang/String;

.field private final mRealRequest:Landroid/location/LocationRequest;

.field private final mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

.field mRequest:Landroid/location/LocationRequest;

.field private mStackTrace:Ljava/lang/Throwable;

.field final synthetic this$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/location/LocationManagerService$Receiver;)V
    .registers 14
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/location/LocationRequest;
    .param p4, "receiver"    # Lcom/android/server/location/LocationManagerService$Receiver;

    .line 2154
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->isFreezed:Z

    .line 2155
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_17

    .line 2156
    # getter for: Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2158
    :cond_17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/location/LocationRequest;->getExpirationRealtimeMs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mExpirationRealtimeMs:J

    .line 2159
    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    .line 2160
    iput-object p3, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    .line 2161
    iput-object p3, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 2162
    iput-object p4, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    .line 2163
    # getter for: Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;
    invoke-static {p1}, Lcom/android/server/location/LocationManagerService;->access$3200(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/AppForegroundHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v1, v1, Lcom/android/server/location/CallerIdentity;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/location/AppForegroundHelper;->isAppForeground(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    .line 2165
    iget-object v0, p4, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v0, v0, Lcom/android/server/location/CallerIdentity;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_4a

    .line 2166
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mStackTrace:Ljava/lang/Throwable;

    .line 2169
    :cond_4a
    # getter for: Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/location/LocationManagerService;->access$3300(Lcom/android/server/location/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/-$$Lambda$LocationManagerService$UpdateRecord$25fPpeMCBEQaIl696puDTixFEtA;->INSTANCE:Lcom/android/server/location/-$$Lambda$LocationManagerService$UpdateRecord$25fPpeMCBEQaIl696puDTixFEtA;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2171
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 2172
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2176
    :cond_5f
    # getter for: Lcom/android/server/location/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;
    invoke-static {p1}, Lcom/android/server/location/LocationManagerService;->access$3400(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;

    move-result-object v2

    iget-object p1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object p1, p1, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v3, p1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object p1, p1, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v4, p1, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    .line 2178
    invoke-virtual {p3}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v6

    iget-boolean v8, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    .line 2176
    move-object v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/location/LocationRequestStatistics;->startRequesting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 2179
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/location/LocationManagerService$Receiver;Lcom/android/server/location/LocationManagerService$1;)V
    .registers 6
    .param p1, "x0"    # Lcom/android/server/location/LocationManagerService;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/location/LocationRequest;
    .param p4, "x3"    # Lcom/android/server/location/LocationManagerService$Receiver;
    .param p5, "x4"    # Lcom/android/server/location/LocationManagerService$1;

    .line 2137
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/LocationManagerService$UpdateRecord;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/location/LocationManagerService$Receiver;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Lcom/android/server/location/LocationManagerService$Receiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 2137
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 2137
    iget-boolean v0, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/location/LocationManagerService$UpdateRecord;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService$UpdateRecord;
    .param p1, "x1"    # Z

    .line 2137
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->updateForeground(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 2137
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/location/LocationManagerService$UpdateRecord;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService$UpdateRecord;
    .param p1, "x1"    # Z

    .line 2137
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->disposeLocked(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/location/LocationManagerService$UpdateRecord;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 2137
    iget-wide v0, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mExpirationRealtimeMs:J

    return-wide v0
.end method

.method static synthetic access$4100(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/Location;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 2137
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/android/server/location/LocationManagerService$UpdateRecord;Landroid/location/Location;)Landroid/location/Location;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService$UpdateRecord;
    .param p1, "x1"    # Landroid/location/Location;

    .line 2137
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    return-object p1
.end method

.method private disposeLocked(Z)V
    .registers 13
    .param p1, "removeReceiver"    # Z

    .line 2195
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_11

    .line 2196
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2199
    :cond_11
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v0, v0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    .line 2200
    .local v0, "identity":Lcom/android/server/location/CallerIdentity;
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;
    invoke-static {v1}, Lcom/android/server/location/LocationManagerService;->access$3400(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/location/LocationRequestStatistics;->stopRequesting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;
    invoke-static {v1}, Lcom/android/server/location/LocationManagerService;->access$3500(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/LocationUsageLogger;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    .line 2207
    invoke-virtual {v1}, Lcom/android/server/location/LocationManagerService$Receiver;->isListener()Z

    move-result v7

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    .line 2208
    invoke-virtual {v1}, Lcom/android/server/location/LocationManagerService$Receiver;->isPendingIntent()Z

    move-result v8

    const/4 v9, 0x0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 2210
    # getter for: Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;
    invoke-static {v1}, Lcom/android/server/location/LocationManagerService;->access$3200(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/AppForegroundHelper;

    move-result-object v1

    iget-object v10, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v10, v10, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v10, v10, Lcom/android/server/location/CallerIdentity;->uid:I

    invoke-virtual {v1, v10}, Lcom/android/server/location/AppForegroundHelper;->getImportance(I)I

    move-result v10

    .line 2202
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/location/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    .line 2213
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/location/LocationManagerService;->access$3300(Lcom/android/server/location/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2214
    .local v1, "globalRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    if-eqz v1, :cond_63

    .line 2215
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2218
    :cond_63
    if-nez p1, :cond_66

    return-void

    .line 2221
    :cond_66
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v2, v2, Lcom/android/server/location/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 2222
    .local v2, "receiverRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2225
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_81

    .line 2228
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    invoke-virtual {v3}, Lcom/android/server/location/LocationManagerService$Receiver;->callRemovedLocked()V

    .line 2229
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/location/LocationManagerService;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    # invokes: Lcom/android/server/location/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/location/LocationManagerService$Receiver;)V
    invoke-static {v3, v4}, Lcom/android/server/location/LocationManagerService;->access$2800(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$Receiver;)V

    .line 2231
    :cond_81
    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "k"    # Ljava/lang/String;

    .line 2170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private updateForeground(Z)V
    .registers 6
    .param p1, "isForeground"    # Z

    .line 2185
    iput-boolean p1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    .line 2186
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$3400(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v1, v1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v2, v2, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v2, v2, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/location/LocationRequestStatistics;->updateForeground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2189
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 2235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdateRecord["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2236
    .local v0, "b":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2237
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v2, v2, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2238
    iget-boolean v2, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    if-nez v2, :cond_24

    .line 2239
    const-string v2, "(background) "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2241
    :cond_24
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/location/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2243
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mStackTrace:Ljava/lang/Throwable;

    if-eqz v1, :cond_57

    .line 2244
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2245
    .local v1, "tmp":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mStackTrace:Ljava/lang/Throwable;

    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 2246
    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2249
    .end local v1    # "tmp":Ljava/io/ByteArrayOutputStream;
    :cond_57
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
