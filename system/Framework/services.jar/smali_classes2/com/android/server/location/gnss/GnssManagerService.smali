.class public Lcom/android/server/location/gnss/GnssManagerService;
.super Ljava/lang/Object;
.source "GnssManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GnssManagerService"


# instance fields
.field private final mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

.field private final mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

.field private mCallback:Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;

.field private final mContext:Landroid/content/Context;

.field private final mGnssAntennaInfoListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<",
            "Ljava/lang/Void;",
            "Landroid/location/IGnssAntennaInfoListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

.field private mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

.field private mGnssBatchingDeathCallback:Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<",
            "Ljava/lang/Void;",
            "Landroid/location/IBatchedLocationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mGnssBatchingInProgress:Z

.field private final mGnssBatchingLock:Ljava/lang/Object;

.field private final mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

.field private final mGnssCapabilitiesProvider:Lcom/android/server/location/gnss/GnssCapabilitiesProvider;

.field private final mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

.field private final mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;

.field private final mGnssMeasurementsListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<",
            "Landroid/location/GnssRequest;",
            "Landroid/location/IGnssMeasurementsListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

.field private final mGnssMetricsProvider:Lcom/android/server/location/gnss/GnssLocationProvider$GnssMetricsProvider;

.field private final mGnssNavigationMessageListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<",
            "Ljava/lang/Void;",
            "Landroid/location/IGnssNavigationMessageListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

.field private final mGnssStatusListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<",
            "Ljava/lang/Void;",
            "Landroid/location/IGnssStatusListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

.field private final mGnssSystemInfoProvider:Lcom/android/server/location/gnss/GnssLocationProvider$GnssSystemInfoProvider;

.field private final mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

.field private mLocationManagerInternal:Landroid/location/LocationManagerInternal;

.field private final mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

.field private final mMeasurementsBlocklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNavigationMessageBlocklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private final mSettingsHelper:Lcom/android/server/location/SettingsHelper;

.field private final mStatusListenerBlocklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/AppOpsHelper;Lcom/android/server/location/SettingsHelper;Lcom/android/server/location/AppForegroundHelper;Lcom/android/server/location/LocationUsageLogger;Landroid/os/Looper;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appOpsHelper"    # Lcom/android/server/location/AppOpsHelper;
    .param p3, "settingsHelper"    # Lcom/android/server/location/SettingsHelper;
    .param p4, "appForegroundHelper"    # Lcom/android/server/location/AppForegroundHelper;
    .param p5, "locationUsageLogger"    # Lcom/android/server/location/LocationUsageLogger;
    .param p6, "looper"    # Landroid/os/Looper;

    .line 155
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/gnss/GnssManagerService;-><init>(Landroid/content/Context;Lcom/android/server/location/AppOpsHelper;Lcom/android/server/location/SettingsHelper;Lcom/android/server/location/AppForegroundHelper;Lcom/android/server/location/LocationUsageLogger;Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/os/Looper;)V

    .line 156
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/location/AppOpsHelper;Lcom/android/server/location/SettingsHelper;Lcom/android/server/location/AppForegroundHelper;Lcom/android/server/location/LocationUsageLogger;Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/os/Looper;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appOpsHelper"    # Lcom/android/server/location/AppOpsHelper;
    .param p3, "settingsHelper"    # Lcom/android/server/location/SettingsHelper;
    .param p4, "appForegroundHelper"    # Lcom/android/server/location/AppForegroundHelper;
    .param p5, "locationUsageLogger"    # Lcom/android/server/location/LocationUsageLogger;
    .param p6, "gnssLocationProvider"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p7, "looper"    # Landroid/os/Looper;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    .line 117
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoListeners:Landroid/util/ArrayMap;

    .line 122
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    .line 126
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingLock:Ljava/lang/Object;

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingInProgress:Z

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mCallback:Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;

    .line 147
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mStatusListenerBlocklist:Ljava/util/HashSet;

    .line 148
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mMeasurementsBlocklist:Ljava/util/HashSet;

    .line 149
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mNavigationMessageBlocklist:Ljava/util/HashSet;

    .line 179
    invoke-static {}, Lcom/android/server/location/gnss/GnssManagerService;->isGnssSupported()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 181
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    .line 182
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    .line 183
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    .line 184
    iput-object p4, p0, Lcom/android/server/location/gnss/GnssManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    .line 185
    iput-object p5, p0, Lcom/android/server/location/gnss/GnssManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    .line 187
    if-nez p6, :cond_5c

    .line 188
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p7}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    move-object p6, v0

    .line 191
    :cond_5c
    iput-object p6, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 192
    invoke-virtual {p6}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGnssStatusProvider()Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    .line 193
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGnssMeasurementsProvider()Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    .line 194
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGnssAntennaInfoProvider()Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    .line 195
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 196
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGnssMeasurementCorrectionsProvider()Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;

    .line 197
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGnssNavigationMessageProvider()Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    .line 198
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGnssSystemInfoProvider()Lcom/android/server/location/gnss/GnssLocationProvider$GnssSystemInfoProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/gnss/GnssLocationProvider$GnssSystemInfoProvider;

    .line 199
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGnssMetricsProvider()Lcom/android/server/location/gnss/GnssLocationProvider$GnssMetricsProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMetricsProvider:Lcom/android/server/location/gnss/GnssLocationProvider$GnssMetricsProvider;

    .line 200
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGnssCapabilitiesProvider()Lcom/android/server/location/gnss/GnssCapabilitiesProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssCapabilitiesProvider:Lcom/android/server/location/gnss/GnssCapabilitiesProvider;

    .line 201
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGnssBatchingProvider()Lcom/android/server/location/gnss/GnssBatchingProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

    .line 202
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getNetInitiatedListener()Landroid/location/INetInitiatedListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 203
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    .line 204
    return-void
.end method

.method private addGnssDataListenerLocked(Ljava/lang/Object;Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;Z)Z
    .registers 31
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "featureId"    # Ljava/lang/String;
    .param p8, "hasNmeaListener"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T",
            "Listener::Landroid/os/IInterface;",
            "TRequest:",
            "Ljava/lang/Object;",
            ">(TTRequest;TT",
            "Listener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/server/location/RemoteListenerHelper<",
            "TTRequest;TT",
            "Listener;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<",
            "TTRequest;TT",
            "Listener;",
            ">;>;",
            "Ljava/util/function/Consumer<",
            "TT",
            "Listener;",
            ">;Z)Z"
        }
    .end annotation

    .line 440
    .local p1, "request":Ljava/lang/Object;, "TTRequest;"
    .local p2, "listener":Landroid/os/IInterface;, "TTListener;"
    .local p5, "gnssDataProvider":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>;"
    .local p6, "gnssDataListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<TTRequest;TTListener;>;>;"
    .local p7, "binderDeathCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TTListener;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    iget-object v3, v0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v3, v0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v14, p4

    invoke-static {v3, v12, v14}, Lcom/android/server/location/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v15

    .line 443
    .local v15, "identity":Lcom/android/server/location/CallerIdentity;
    iget-object v3, v0, Lcom/android/server/location/gnss/GnssManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v3, v15}, Lcom/android/server/location/AppOpsHelper;->checkLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_24

    .line 444
    return v4

    .line 448
    :cond_24
    invoke-direct {v0, v13}, Lcom/android/server/location/gnss/GnssManagerService;->getListenerNameByProvider(Lcom/android/server/location/RemoteListenerHelper;)Ljava/lang/String;

    move-result-object v11

    .line 449
    .local v11, "listenerName":Ljava/lang/String;
    invoke-virtual {v0, v11, v12}, Lcom/android/server/location/gnss/GnssManagerService;->isDataListenerBlocklist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 450
    return v4

    .line 454
    :cond_2f
    new-instance v3, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;

    move-object/from16 v10, p7

    invoke-direct {v3, v1, v2, v15, v10}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/server/location/CallerIdentity;Ljava/util/function/Consumer;)V

    move-object v9, v3

    .line 456
    .local v9, "linkedListener":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;, "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<TTRequest;TTListener;>;"
    invoke-interface/range {p2 .. p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 457
    .local v8, "binder":Landroid/os/IBinder;
    invoke-virtual {v9, v8}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->linkToListenerDeathNotificationLocked(Landroid/os/IBinder;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 458
    return v4

    .line 461
    :cond_42
    move-object/from16 v7, p6

    invoke-virtual {v7, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const/16 v16, 0x0

    .line 466
    .local v16, "isAllowed":Z
    iget-object v3, v0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    if-eq v13, v3, :cond_59

    iget-object v3, v0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    if-ne v13, v3, :cond_52

    goto :goto_59

    :cond_52
    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v11

    goto :goto_88

    .line 468
    :cond_59
    :goto_59
    iget-object v3, v0, Lcom/android/server/location/gnss/GnssManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    .line 470
    iget-object v5, v0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    if-ne v13, v5, :cond_61

    .line 471
    const/4 v5, 0x2

    goto :goto_62

    .line 472
    :cond_61
    const/4 v5, 0x3

    :goto_62
    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v6, v0, Lcom/android/server/location/gnss/GnssManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    iget v4, v15, Lcom/android/server/location/CallerIdentity;->uid:I

    .line 478
    invoke-virtual {v6, v4}, Lcom/android/server/location/AppForegroundHelper;->getImportance(I)I

    move-result v21

    .line 468
    const/4 v4, 0x0

    move-object/from16 v6, p3

    move-object/from16 v7, v17

    move-object/from16 v17, v8

    .end local v8    # "binder":Landroid/os/IBinder;
    .local v17, "binder":Landroid/os/IBinder;
    move/from16 v8, v18

    move-object/from16 v18, v9

    .end local v9    # "linkedListener":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;, "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<TTRequest;TTListener;>;"
    .local v18, "linkedListener":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;, "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<TTRequest;TTListener;>;"
    move/from16 v9, v19

    move-object/from16 v10, v20

    move-object/from16 v19, v11

    .end local v11    # "listenerName":Ljava/lang/String;
    .local v19, "listenerName":Ljava/lang/String;
    move/from16 v11, v21

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/location/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    .line 480
    :goto_88
    iget-object v3, v0, Lcom/android/server/location/gnss/GnssManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    iget v4, v15, Lcom/android/server/location/CallerIdentity;->uid:I

    invoke-virtual {v3, v4}, Lcom/android/server/location/AppForegroundHelper;->isAppForeground(I)Z

    move-result v3

    if-nez v3, :cond_9c

    .line 481
    invoke-direct {v0, v15}, Lcom/android/server/location/gnss/GnssManagerService;->isThrottlingExempt(Lcom/android/server/location/CallerIdentity;)Z

    move-result v3

    if-eqz v3, :cond_99

    goto :goto_9c

    :cond_99
    move/from16 v10, p8

    goto :goto_a3

    .line 482
    :cond_9c
    :goto_9c
    move/from16 v10, p8

    invoke-virtual {v13, v1, v2, v15, v10}, Lcom/android/server/location/RemoteListenerHelper;->addListener(Ljava/lang/Object;Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;Z)V

    .line 483
    const/16 v16, 0x1

    .line 486
    :goto_a3
    iget-object v3, v0, Lcom/android/server/location/gnss/GnssManagerService;->mCallback:Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;

    if-eqz v3, :cond_b6

    .line 487
    iget v7, v15, Lcom/android/server/location/CallerIdentity;->uid:I

    iget v8, v15, Lcom/android/server/location/CallerIdentity;->pid:I

    move-object/from16 v4, v17

    move-object/from16 v5, p3

    move-object/from16 v6, v19

    move/from16 v9, v16

    invoke-interface/range {v3 .. v9}, Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;->addGnssDataListener(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 491
    :cond_b6
    const/4 v3, 0x1

    return v3
.end method

.method private getListenerNameByProvider(Lcom/android/server/location/RemoteListenerHelper;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRequest:",
            "Ljava/lang/Object;",
            "T",
            "Listener::Landroid/os/IInterface;",
            ">(",
            "Lcom/android/server/location/RemoteListenerHelper<",
            "TTRequest;TT",
            "Listener;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 852
    .local p1, "provider":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>;"
    instance-of v0, p1, Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    if-eqz v0, :cond_7

    .line 853
    const-string v0, "GnssStatusListener"

    return-object v0

    .line 854
    :cond_7
    instance-of v0, p1, Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    if-eqz v0, :cond_e

    .line 855
    const-string v0, "GnssMeasurementsListener"

    return-object v0

    .line 856
    :cond_e
    instance-of v0, p1, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    if-eqz v0, :cond_15

    .line 857
    const-string v0, "GnssNavigationMessageListener"

    return-object v0

    .line 858
    :cond_15
    instance-of v0, p1, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    if-eqz v0, :cond_1c

    .line 859
    const-string v0, "GnssAntennaInfoListener"

    return-object v0

    .line 861
    :cond_1c
    const-string v0, "Invalid"

    return-object v0
.end method

.method public static isGnssSupported()Z
    .registers 1

    .line 91
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->isSupported()Z

    move-result v0

    return v0
.end method

.method private isThrottlingExempt(Lcom/android/server/location/CallerIdentity;)Z
    .registers 5
    .param p1, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;

    .line 711
    iget v0, p1, Lcom/android/server/location/CallerIdentity;->uid:I

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_8

    .line 712
    return v1

    .line 715
    :cond_8
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper;->getBackgroundThrottlePackageWhitelist()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 717
    return v1

    .line 720
    :cond_17
    monitor-enter p0

    .line 721
    :try_start_18
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    if-eqz v0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 722
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_2b

    .line 723
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    iget-object v1, p1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManagerInternal;->isProviderPackage(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 722
    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public static synthetic lambda$de6v4jWKxQDC9J4FdGGrfKg2phA(Lcom/android/server/location/gnss/GnssManagerService;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService;->onAppForegroundChanged(IZ)V

    return-void
.end method

.method private onAppForegroundChanged(IZ)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "foreground"    # Z

    .line 360
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 361
    :try_start_3
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    sget-object v4, Lcom/android/server/location/gnss/-$$Lambda$qoNbXUvSu3yuTPVXPUfZW_HDrTQ;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$qoNbXUvSu3yuTPVXPUfZW_HDrTQ;

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/gnss/GnssManagerService;->updateListenersOnForegroundChangedLocked(Ljava/util/Map;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V

    .line 367
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_4a

    .line 368
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 369
    :try_start_13
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    sget-object v5, Lcom/android/server/location/gnss/-$$Lambda$HALkbmbB2IPr_wdFkPjiIWCzJsY;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$HALkbmbB2IPr_wdFkPjiIWCzJsY;

    move-object v2, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/location/gnss/GnssManagerService;->updateListenersOnForegroundChangedLocked(Ljava/util/Map;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V

    .line 375
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_47

    .line 376
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 377
    :try_start_23
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    sget-object v4, Lcom/android/server/location/gnss/-$$Lambda$hu439-4T6QBT8QyZnspMtXqICWs;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$hu439-4T6QBT8QyZnspMtXqICWs;

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/gnss/GnssManagerService;->updateListenersOnForegroundChangedLocked(Ljava/util/Map;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V

    .line 383
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_44

    .line 384
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 385
    :try_start_33
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoListeners:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    sget-object v5, Lcom/android/server/location/gnss/-$$Lambda$D_8O7MDYM_zvDJaJvJVfzXhIfZY;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$D_8O7MDYM_zvDJaJvJVfzXhIfZY;

    move-object v2, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/location/gnss/GnssManagerService;->updateListenersOnForegroundChangedLocked(Ljava/util/Map;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V

    .line 391
    monitor-exit v1

    .line 392
    return-void

    .line 391
    :catchall_41
    move-exception v0

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_33 .. :try_end_43} :catchall_41

    throw v0

    .line 383
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v1

    .line 375
    :catchall_47
    move-exception v0

    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v0

    .line 367
    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method private removeGnssDataListenerLocked(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRequest:",
            "Ljava/lang/Object;",
            "T",
            "Listener::Landroid/os/IInterface;",
            ">(TT",
            "Listener;",
            "Lcom/android/server/location/RemoteListenerHelper<",
            "TTRequest;TT",
            "Listener;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<",
            "TTRequest;TT",
            "Listener;",
            ">;>;)V"
        }
    .end annotation

    .line 498
    .local p1, "listener":Landroid/os/IInterface;, "TTListener;"
    .local p2, "gnssDataProvider":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>;"
    .local p3, "gnssDataListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<TTRequest;TTListener;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-nez v1, :cond_e

    .line 499
    const-string v2, "GnssManagerService"

    const-string v3, "Can not remove GNSS data listener. GNSS data provider not available."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-void

    .line 506
    :cond_e
    invoke-interface/range {p1 .. p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 508
    .local v2, "binder":Landroid/os/IBinder;
    invoke-direct {v0, v1}, Lcom/android/server/location/gnss/GnssManagerService;->getListenerNameByProvider(Lcom/android/server/location/RemoteListenerHelper;)Ljava/lang/String;

    move-result-object v3

    .line 509
    .local v3, "listenerName":Ljava/lang/String;
    iget-object v4, v0, Lcom/android/server/location/gnss/GnssManagerService;->mCallback:Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;

    if-eqz v4, :cond_1d

    .line 510
    invoke-interface {v4, v2, v3}, Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;->removeGnssDataListener(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 513
    :cond_1d
    nop

    .line 514
    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;

    .line 515
    .local v5, "linkedListener":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;, "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<TTRequest;TTListener;>;"
    if-nez v5, :cond_29

    .line 516
    return-void

    .line 518
    :cond_29
    iget-object v6, v0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    if-eq v1, v6, :cond_31

    iget-object v6, v0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    if-ne v1, v6, :cond_54

    .line 520
    :cond_31
    iget-object v7, v0, Lcom/android/server/location/gnss/GnssManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    const/4 v8, 0x1

    .line 522
    iget-object v6, v0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    if-ne v1, v6, :cond_3b

    .line 523
    const/4 v6, 0x2

    move v9, v6

    goto :goto_3d

    .line 524
    :cond_3b
    const/4 v6, 0x3

    move v9, v6

    .line 525
    :goto_3d
    invoke-virtual {v5}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->getCallerIdentity()Lcom/android/server/location/CallerIdentity;

    move-result-object v6

    iget-object v10, v6, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v6, v0, Lcom/android/server/location/gnss/GnssManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    .line 530
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-virtual {v6, v15}, Lcom/android/server/location/AppForegroundHelper;->getImportance(I)I

    move-result v15

    .line 520
    invoke-virtual/range {v7 .. v15}, Lcom/android/server/location/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    .line 532
    :cond_54
    invoke-virtual {v5, v2}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->unlinkFromListenerDeathNotificationLocked(Landroid/os/IBinder;)V

    .line 533
    move-object/from16 v6, p1

    invoke-virtual {v1, v6}, Lcom/android/server/location/RemoteListenerHelper;->removeListener(Landroid/os/IInterface;)V

    .line 534
    return-void
.end method

.method private updateListenersOnForegroundChangedLocked(Ljava/util/Map;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V
    .registers 25
    .param p4, "uid"    # I
    .param p5, "foreground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRequest:",
            "Ljava/lang/Object;",
            "T",
            "Listener::Landroid/os/IInterface;",
            ">(",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<",
            "TTRequest;TT",
            "Listener;",
            ">;>;",
            "Lcom/android/server/location/RemoteListenerHelper<",
            "TTRequest;TT",
            "Listener;",
            ">;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT",
            "Listener;",
            ">;IZ)V"
        }
    .end annotation

    .line 401
    .local p1, "gnssDataListeners":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<TTRequest;TTListener;>;>;"
    .local p2, "gnssDataProvider":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>;"
    .local p3, "mapBinderToListener":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TTListener;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 402
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<TTRequest;TTListener;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;

    .line 403
    .local v4, "linkedListener":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;, "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<TTRequest;TTListener;>;"
    invoke-virtual {v4}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->getCallerIdentity()Lcom/android/server/location/CallerIdentity;

    move-result-object v5

    .line 404
    .local v5, "callerIdentity":Lcom/android/server/location/CallerIdentity;
    invoke-virtual {v4}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->getRequest()Ljava/lang/Object;

    move-result-object v6

    .line 405
    .local v6, "request":Ljava/lang/Object;, "TTRequest;"
    iget v7, v5, Lcom/android/server/location/CallerIdentity;->uid:I

    move/from16 v8, p4

    if-eq v7, v8, :cond_2d

    .line 406
    goto :goto_c

    .line 409
    :cond_2d
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    move-object/from16 v9, p3

    invoke-interface {v9, v7}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IInterface;

    .line 411
    .local v7, "listener":Landroid/os/IInterface;, "TTListener;"
    invoke-interface {v7}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 412
    .local v17, "binder":Landroid/os/IBinder;
    const/4 v10, 0x0

    .line 415
    .local v10, "isAdd":Z
    if-nez p5, :cond_4f

    invoke-direct {v0, v5}, Lcom/android/server/location/gnss/GnssManagerService;->isThrottlingExempt(Lcom/android/server/location/CallerIdentity;)Z

    move-result v11

    if-eqz v11, :cond_49

    goto :goto_4f

    .line 419
    :cond_49
    invoke-virtual {v1, v7}, Lcom/android/server/location/RemoteListenerHelper;->removeListener(Landroid/os/IInterface;)V

    move/from16 v18, v10

    goto :goto_55

    .line 416
    :cond_4f
    :goto_4f
    invoke-virtual {v1, v6, v7, v5}, Lcom/android/server/location/RemoteListenerHelper;->addListener(Ljava/lang/Object;Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V

    .line 417
    const/4 v10, 0x1

    move/from16 v18, v10

    .line 422
    .end local v10    # "isAdd":Z
    .local v18, "isAdd":Z
    :goto_55
    iget-object v10, v0, Lcom/android/server/location/gnss/GnssManagerService;->mCallback:Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;

    if-eqz v10, :cond_6c

    .line 423
    iget-object v13, v5, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    .line 424
    invoke-direct {v0, v1}, Lcom/android/server/location/gnss/GnssManagerService;->getListenerNameByProvider(Lcom/android/server/location/RemoteListenerHelper;)Ljava/lang/String;

    move-result-object v14

    iget v15, v5, Lcom/android/server/location/CallerIdentity;->uid:I

    iget v12, v5, Lcom/android/server/location/CallerIdentity;->pid:I

    .line 423
    move/from16 v11, v18

    move/from16 v16, v12

    move-object/from16 v12, v17

    invoke-interface/range {v10 .. v16}, Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;->updateGnssDataListener(ZLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V

    .line 427
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<TTRequest;TTListener;>;>;"
    .end local v4    # "linkedListener":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;, "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<TTRequest;TTListener;>;"
    .end local v5    # "callerIdentity":Lcom/android/server/location/CallerIdentity;
    .end local v6    # "request":Ljava/lang/Object;, "TTRequest;"
    .end local v7    # "listener":Landroid/os/IInterface;, "TTListener;"
    .end local v17    # "binder":Landroid/os/IBinder;
    .end local v18    # "isAdd":Z
    :cond_6c
    goto :goto_c

    .line 428
    :cond_6d
    move-object/from16 v9, p3

    move/from16 v8, p4

    return-void
.end method


# virtual methods
.method public addGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "listener"    # Landroid/location/IGnssAntennaInfoListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;

    .line 617
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 618
    const/4 v2, 0x0

    :try_start_4
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoListeners:Landroid/util/ArrayMap;

    new-instance v8, Lcom/android/server/location/gnss/-$$Lambda$r0e-CQBWppHmS1rnJk0BvqOj_UE;

    invoke-direct {v8, p0}, Lcom/android/server/location/gnss/-$$Lambda$r0e-CQBWppHmS1rnJk0BvqOj_UE;-><init>(Lcom/android/server/location/gnss/GnssManagerService;)V

    const/4 v9, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssDataListenerLocked(Ljava/lang/Object;Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 627
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public addGnssBatchingCallback(Landroid/location/IBatchedLocationCallback;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "callback"    # Landroid/location/IBatchedLocationCallback;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/android/server/location/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v0

    .line 302
    .local v0, "identity":Lcom/android/server/location/CallerIdentity;
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_18
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    .line 304
    new-instance v3, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;

    new-instance v4, Lcom/android/server/location/gnss/-$$Lambda$GnssManagerService$ADNn_wSsxu1352rEzpl8bNWHHIs;

    invoke-direct {v4, p0}, Lcom/android/server/location/gnss/-$$Lambda$GnssManagerService$ADNn_wSsxu1352rEzpl8bNWHHIs;-><init>(Lcom/android/server/location/gnss/GnssManagerService;)V

    invoke-direct {v3, v2, p1, v0, v4}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/server/location/CallerIdentity;Ljava/util/function/Consumer;)V

    iput-object v3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;

    .line 314
    nop

    .line 315
    invoke-interface {p1}, Landroid/location/IBatchedLocationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 314
    invoke-virtual {v3, v2}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->linkToListenerDeathNotificationLocked(Landroid/os/IBinder;)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 316
    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_18 .. :try_end_33} :catchall_31

    throw v2
.end method

.method public addGnssMeasurementsListener(Landroid/location/GnssRequest;Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "request"    # Landroid/location/GnssRequest;
    .param p2, "listener"    # Landroid/location/IGnssMeasurementsListener;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "featureId"    # Ljava/lang/String;

    .line 569
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/location/GnssRequest;->isFullTracking()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 570
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :cond_10
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 574
    :try_start_13
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    new-instance v8, Lcom/android/server/location/gnss/-$$Lambda$FxAranobP2o6eVcPEOp8tzZYyLY;

    invoke-direct {v8, p0}, Lcom/android/server/location/gnss/-$$Lambda$FxAranobP2o6eVcPEOp8tzZYyLY;-><init>(Lcom/android/server/location/gnss/GnssManagerService;)V

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssDataListenerLocked(Ljava/lang/Object;Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 583
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "listener"    # Landroid/location/IGnssNavigationMessageListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;

    .line 648
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 649
    const/4 v2, 0x0

    :try_start_4
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    new-instance v8, Lcom/android/server/location/gnss/-$$Lambda$139-CBKLG1EL-wg1T1KP8tgmIKg;

    invoke-direct {v8, p0}, Lcom/android/server/location/gnss/-$$Lambda$139-CBKLG1EL-wg1T1KP8tgmIKg;-><init>(Lcom/android/server/location/gnss/GnssManagerService;)V

    const/4 v9, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssDataListenerLocked(Ljava/lang/Object;Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 658
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public clearListenerBlocklist()V
    .registers 3

    .line 837
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mStatusListenerBlocklist:Ljava/util/HashSet;

    monitor-enter v0

    .line 838
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mStatusListenerBlocklist:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 839
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_22

    .line 841
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mMeasurementsBlocklist:Ljava/util/HashSet;

    monitor-enter v1

    .line 842
    :try_start_c
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mMeasurementsBlocklist:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 843
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_1f

    .line 845
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mNavigationMessageBlocklist:Ljava/util/HashSet;

    monitor-enter v0

    .line 846
    :try_start_15
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mNavigationMessageBlocklist:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 847
    monitor-exit v0

    .line 848
    return-void

    .line 847
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v1

    .line 843
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0

    .line 839
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 730
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 732
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    array-length v1, p3

    if-lez v1, :cond_21

    const/4 v1, 0x0

    aget-object v1, p3, v1

    const-string v2, "--gnssmetrics"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 733
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMetricsProvider:Lcom/android/server/location/gnss/GnssLocationProvider$GnssMetricsProvider;

    if-eqz v1, :cond_20

    .line 734
    invoke-interface {v1}, Lcom/android/server/location/gnss/GnssLocationProvider$GnssMetricsProvider;->getGnssMetricsAsProtoString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 736
    :cond_20
    return-void

    .line 739
    :cond_21
    const-string v1, "GnssMeasurement Listeners:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 740
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 741
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 742
    :try_start_2c
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;

    .line 743
    .local v3, "listener":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 744
    .end local v3    # "listener":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;
    goto :goto_36

    .line 745
    :cond_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_2c .. :try_end_47} :catchall_b3

    .line 746
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 748
    const-string v1, "GnssNavigationMessage Listeners:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 749
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 750
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 751
    :try_start_55
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;

    .line 752
    .restart local v3    # "listener":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 753
    .end local v3    # "listener":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;
    goto :goto_5f

    .line 754
    :cond_6f
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_55 .. :try_end_70} :catchall_b0

    .line 755
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 757
    const-string v1, "GnssStatus Listeners:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 758
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 759
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 760
    :try_start_7e
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_88
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_98

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;

    .line 761
    .restart local v3    # "listener":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 762
    .end local v3    # "listener":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;
    goto :goto_88

    .line 763
    :cond_98
    monitor-exit v1
    :try_end_99
    .catchall {:try_start_7e .. :try_end_99} :catchall_ad

    .line 764
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 766
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v2

    .line 767
    :try_start_9f
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingInProgress:Z

    if-eqz v1, :cond_a8

    .line 768
    const-string v1, "GNSS batching in progress"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 770
    :cond_a8
    monitor-exit v2

    .line 771
    return-void

    .line 770
    :catchall_aa
    move-exception v1

    monitor-exit v2
    :try_end_ac
    .catchall {:try_start_9f .. :try_end_ac} :catchall_aa

    throw v1

    .line 763
    :catchall_ad
    move-exception v2

    :try_start_ae
    monitor-exit v1
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw v2

    .line 754
    :catchall_b0
    move-exception v1

    :try_start_b1
    monitor-exit v2
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    throw v1

    .line 745
    :catchall_b3
    move-exception v2

    :try_start_b4
    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    throw v2
.end method

.method public enableSLocation()V
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    if-eqz v0, :cond_9

    .line 170
    check-cast v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->enableSLocation()V

    .line 172
    :cond_9
    return-void
.end method

.method public flushGnssBatch(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :try_start_12
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssBatchingProvider;->flush()V

    .line 330
    monitor-exit v0

    .line 331
    return-void

    .line 330
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public getGnssBatchSize(Ljava/lang/String;)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_12
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssBatchingProvider;->getBatchSize()I

    move-result v1

    monitor-exit v0

    return v1

    .line 263
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public getGnssCapabilities()J
    .registers 3

    .line 251
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssCapabilitiesProvider:Lcom/android/server/location/gnss/GnssCapabilitiesProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssCapabilitiesProvider;->getGnssCapabilities()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGnssHardwareModelName()Ljava/lang/String;
    .registers 2

    .line 243
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/gnss/GnssLocationProvider$GnssSystemInfoProvider;

    invoke-interface {v0}, Lcom/android/server/location/gnss/GnssLocationProvider$GnssSystemInfoProvider;->getGnssHardwareModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGnssLocationProvider()Lcom/android/server/location/gnss/GnssLocationProvider;
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    return-object v0
.end method

.method public getGnssYearOfHardware()I
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/gnss/GnssLocationProvider$GnssSystemInfoProvider;

    invoke-interface {v0}, Lcom/android/server/location/gnss/GnssLocationProvider$GnssSystemInfoProvider;->getGnssYearOfHardware()I

    move-result v0

    return v0
.end method

.method public getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    return-object v0
.end method

.method public injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;Ljava/lang/String;)V
    .registers 6
    .param p1, "measurementCorrections"    # Landroid/location/GnssMeasurementCorrections;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 591
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;->injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V

    .line 596
    return-void
.end method

.method isDataListenerBlocklist(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "listenerName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 775
    const/4 v0, 0x0

    .line 776
    .local v0, "contain":Z
    const-string v1, "GnssStatusListener"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 777
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mStatusListenerBlocklist:Ljava/util/HashSet;

    monitor-enter v1

    .line 778
    :try_start_c
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mStatusListenerBlocklist:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .line 779
    monitor-exit v1

    goto :goto_46

    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_15

    throw v2

    .line 780
    :cond_18
    const-string v1, "GnssMeasurementsListener"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 781
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mMeasurementsBlocklist:Ljava/util/HashSet;

    monitor-enter v1

    .line 782
    :try_start_23
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mMeasurementsBlocklist:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .line 783
    monitor-exit v1

    goto :goto_46

    :catchall_2c
    move-exception v2

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_2c

    throw v2

    .line 784
    :cond_2f
    const-string v1, "GnssNavigationMessageListener"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 785
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mNavigationMessageBlocklist:Ljava/util/HashSet;

    monitor-enter v1

    .line 786
    :try_start_3a
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mNavigationMessageBlocklist:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .line 787
    monitor-exit v1

    goto :goto_46

    :catchall_43
    move-exception v2

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_3a .. :try_end_45} :catchall_43

    throw v2

    .line 789
    :cond_46
    :goto_46
    if-eqz v0, :cond_61

    .line 790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", size is over threshold, so return : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_61
    return v0
.end method

.method public synthetic lambda$addGnssBatchingCallback$0$GnssManagerService(Landroid/location/IBatchedLocationCallback;)V
    .registers 2
    .param p1, "listener"    # Landroid/location/IBatchedLocationCallback;

    .line 310
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService;->stopGnssBatch()Z

    .line 311
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssBatchingCallback()V

    .line 312
    return-void
.end method

.method public onReportLocation(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 688
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 689
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    .line 690
    .local v1, "gnssBatchingCallback":Landroid/location/IBatchedLocationCallback;
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;

    .line 691
    .local v2, "gnssBatchingDeathCallback":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;, "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<Ljava/lang/Void;Landroid/location/IBatchedLocationCallback;>;"
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_36

    .line 693
    if-eqz v1, :cond_35

    if-nez v2, :cond_d

    goto :goto_35

    .line 697
    :cond_d
    invoke-virtual {v2}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->getCallerIdentity()Lcom/android/server/location/CallerIdentity;

    move-result-object v0

    iget v0, v0, Lcom/android/server/location/CallerIdentity;->userId:I

    .line 698
    .local v0, "userId":I
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    const-string/jumbo v4, "gps"

    invoke-virtual {v3, v4, v0}, Landroid/location/LocationManagerInternal;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_27

    .line 699
    const-string v3, "GnssManagerService"

    const-string/jumbo v4, "reportLocationBatch() called without user permission"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    return-void

    .line 704
    :cond_27
    :try_start_27
    invoke-interface {v1, p1}, Landroid/location/IBatchedLocationCallback;->onLocationBatch(Ljava/util/List;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_2b

    .line 707
    goto :goto_34

    .line 705
    :catch_2b
    move-exception v3

    .line 706
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "GnssManagerService"

    const-string/jumbo v5, "reportLocationBatch() failed"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 708
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_34
    return-void

    .line 694
    .end local v0    # "userId":I
    :cond_35
    :goto_35
    return-void

    .line 691
    .end local v1    # "gnssBatchingCallback":Landroid/location/IBatchedLocationCallback;
    .end local v2    # "gnssBatchingDeathCallback":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;, "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<Ljava/lang/Void;Landroid/location/IBatchedLocationCallback;>;"
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public declared-synchronized onSystemReady()V
    .registers 3

    monitor-enter p0

    .line 208
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2c

    if-eqz v0, :cond_7

    .line 209
    monitor-exit p0

    return-void

    .line 212
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/AppOpsHelper;->onSystemReady()V

    .line 213
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper;->onSystemReady()V

    .line 214
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    invoke-virtual {v0}, Lcom/android/server/location/AppForegroundHelper;->onSystemReady()V

    .line 216
    const-class v0, Landroid/location/LocationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManagerInternal;

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    .line 218
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssManagerService$de6v4jWKxQDC9J4FdGGrfKg2phA;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/-$$Lambda$GnssManagerService$de6v4jWKxQDC9J4FdGGrfKg2phA;-><init>(Lcom/android/server/location/gnss/GnssManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/AppForegroundHelper;->addListener(Lcom/android/server/location/AppForegroundHelper$AppForegroundListener;)V
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_2c

    .line 219
    monitor-exit p0

    return-void

    .line 207
    .end local p0    # "this":Lcom/android/server/location/gnss/GnssManagerService;
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 15
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .param p4, "hasNmeaListener"    # Z

    .line 541
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 542
    const/4 v2, 0x0

    :try_start_4
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    new-instance v8, Lcom/android/server/location/gnss/-$$Lambda$WsssLeTVg_jaQ16K-SvqbRc0TV8;

    invoke-direct {v8, p0}, Lcom/android/server/location/gnss/-$$Lambda$WsssLeTVg_jaQ16K-SvqbRc0TV8;-><init>(Lcom/android/server/location/gnss/GnssManagerService;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssDataListenerLocked(Ljava/lang/Object;Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 551
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public removeGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/location/IGnssAntennaInfoListener;

    .line 636
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 637
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssDataListenerLocked(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V

    .line 639
    monitor-exit v0

    .line 640
    return-void

    .line 639
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public removeGnssBatchingCallback()V
    .registers 5

    .line 337
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_b
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    .line 341
    invoke-interface {v3}, Landroid/location/IBatchedLocationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 340
    invoke-virtual {v1, v3}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->unlinkFromListenerDeathNotificationLocked(Landroid/os/IBinder;)V

    .line 342
    iput-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    .line 343
    iput-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;

    .line 344
    monitor-exit v0

    .line 345
    return-void

    .line 344
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/location/IGnssMeasurementsListener;

    .line 602
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 603
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssDataListenerLocked(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V

    .line 605
    monitor-exit v0

    .line 606
    return-void

    .line 605
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/location/IGnssNavigationMessageListener;

    .line 665
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 666
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssDataListenerLocked(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V

    .line 668
    monitor-exit v0

    .line 669
    return-void

    .line 668
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public sendNiResponse(II)V
    .registers 6
    .param p1, "notifId"    # I
    .param p2, "userResponse"    # I

    .line 676
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    invoke-interface {v0, p1, p2}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 679
    goto :goto_e

    .line 677
    :catch_6
    move-exception v0

    .line 678
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GnssManagerService"

    const-string v2, "RemoteException in LocationManagerService.sendNiResponse"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public setCallback(Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;

    .line 160
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mCallback:Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;

    .line 161
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    if-eqz v0, :cond_b

    .line 162
    check-cast v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->setCallback(Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;)V

    .line 164
    :cond_b
    return-void
.end method

.method public startGnssBatch(JZLjava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "periodNanos"    # J
    .param p3, "wakeOnFifoFull"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "featureId"    # Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p4, p5}, Lcom/android/server/location/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v0

    .line 276
    .local v0, "identity":Lcom/android/server/location/CallerIdentity;
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/AppOpsHelper;->checkLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 277
    const/4 v1, 0x0

    return v1

    .line 280
    :cond_1f
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 281
    :try_start_22
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingInProgress:Z

    if-eqz v2, :cond_31

    .line 283
    const-string v2, "GnssManagerService"

    const-string/jumbo v3, "startGnssBatch unexpectedly called w/o stopping prior batch"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService;->stopGnssBatch()Z

    .line 287
    :cond_31
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingInProgress:Z

    .line 288
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/location/gnss/GnssBatchingProvider;->start(JZ)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 289
    :catchall_3c
    move-exception v2

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_22 .. :try_end_3e} :catchall_3c

    throw v2
.end method

.method public stopGnssBatch()Z
    .registers 4

    .line 351
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    const/4 v1, 0x0

    :try_start_c
    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingInProgress:Z

    .line 355
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssBatchingProvider;->stop()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 356
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_16

    throw v1
.end method

.method public unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;

    .line 558
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 559
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssDataListenerLocked(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V

    .line 560
    monitor-exit v0

    .line 561
    return-void

    .line 560
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public updateDataListenerBlocklist(Landroid/location/LocationConstants$LISTENER_TYPE;Ljava/util/List;)V
    .registers 7
    .param p1, "type"    # Landroid/location/LocationConstants$LISTENER_TYPE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/LocationConstants$LISTENER_TYPE;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 796
    .local p2, "listenerBlocklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/location/gnss/GnssManagerService$1;->$SwitchMap$android$location$LocationConstants$LISTENER_TYPE:[I

    invoke-virtual {p1}, Landroid/location/LocationConstants$LISTENER_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_84

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2e

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid data listener type["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ab

    .line 820
    :cond_2e
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mNavigationMessageBlocklist:Ljava/util/HashSet;

    monitor-enter v0

    .line 821
    :try_start_31
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mNavigationMessageBlocklist:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 823
    if-eqz p2, :cond_55

    .line 824
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mNavigationMessageBlocklist:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 825
    const-string v1, "GnssManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NavigationMessageBlocklist="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mNavigationMessageBlocklist:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_55
    monitor-exit v0

    .line 828
    goto :goto_ab

    .line 827
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_31 .. :try_end_59} :catchall_57

    throw v1

    .line 809
    :cond_5a
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mMeasurementsBlocklist:Ljava/util/HashSet;

    monitor-enter v0

    .line 810
    :try_start_5d
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mMeasurementsBlocklist:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 812
    if-eqz p2, :cond_7f

    .line 813
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mMeasurementsBlocklist:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 814
    const-string v1, "GnssManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MeasurementsBlocklist="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_7f
    monitor-exit v0

    .line 817
    goto :goto_ab

    .line 816
    :catchall_81
    move-exception v1

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_5d .. :try_end_83} :catchall_81

    throw v1

    .line 798
    :cond_84
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mStatusListenerBlocklist:Ljava/util/HashSet;

    monitor-enter v0

    .line 799
    :try_start_87
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mStatusListenerBlocklist:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 801
    if-eqz p2, :cond_a9

    .line 802
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mStatusListenerBlocklist:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 803
    const-string v1, "GnssManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StatusListenerBlocklist = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_a9
    monitor-exit v0

    .line 806
    nop

    .line 834
    :goto_ab
    return-void

    .line 805
    :catchall_ac
    move-exception v1

    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_87 .. :try_end_ae} :catchall_ac

    throw v1
.end method
