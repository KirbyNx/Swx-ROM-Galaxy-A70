.class public Lcom/android/server/enterprise/geofencing/GeofenceService;
.super Lcom/samsung/android/knox/location/IGeofencing$Stub;
.source "GeofenceService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;,
        Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;
    }
.end annotation


# static fields
.field private static final CHECK_DEVICE_POSITION:I = 0x1

.field private static final DEFAULT_TIME_LIMIT:I = 0xea60

.field private static final REFRESH_GEOFENCING:I = 0x3

.field private static final START_GEOFENCING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GeofenceService"

.field private static mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;


# instance fields
.field private mActiveGeofenceList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/location/Geofence;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLocation:Landroid/location/Location;

.field private mLocationManager:Landroid/location/LocationManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUserRemovedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/knox/location/IGeofencing$Stub;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 102
    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 103
    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    .line 140
    new-instance v0, Lcom/android/server/enterprise/geofencing/GeofenceService$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/geofencing/GeofenceService$1;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 229
    new-instance v0, Lcom/android/server/enterprise/geofencing/GeofenceService$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/geofencing/GeofenceService$2;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    .line 125
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 126
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->initializeHandlerThread()V

    .line 127
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;
    .param p1, "x1"    # I

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->loadGeofenceActiveList(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/geofencing/GeofenceService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;

    .line 94
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkMonitoring()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/util/List;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;
    .param p1, "x1"    # I

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isDeviceInsideGeofence(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;
    .param p1, "x1"    # I

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/geofencing/GeofenceService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;

    .line 94
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/geofencing/GeofenceService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;

    .line 94
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;
    .param p1, "x1"    # I

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/location/Location;)Landroid/location/Location;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;
    .param p1, "x1"    # Landroid/location/Location;

    .line 94
    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/location/Location;Z)Ljava/util/List;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;
    .param p1, "x1"    # Landroid/location/Location;
    .param p2, "x2"    # Z

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private calcBoundingBox(Ljava/util/List;)Lcom/samsung/android/knox/location/BoundingBox;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;)",
            "Lcom/samsung/android/knox/location/BoundingBox;"
        }
    .end annotation

    .line 1777
    .local p1, "point":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    const/4 v0, 0x0

    .line 1778
    .local v0, "boundingBox":Lcom/samsung/android/knox/location/BoundingBox;
    if-eqz p1, :cond_62

    .line 1779
    new-instance v1, Lcom/samsung/android/knox/location/BoundingBox;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/samsung/android/knox/location/BoundingBox;-><init>(Lcom/samsung/android/knox/location/LatLongPoint;Lcom/samsung/android/knox/location/LatLongPoint;Lcom/samsung/android/knox/location/LatLongPoint;Lcom/samsung/android/knox/location/LatLongPoint;)V

    move-object v0, v1

    .line 1780
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_62

    .line 1781
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1783
    .local v2, "p1":Lcom/samsung/android/knox/location/LatLongPoint;
    iget-wide v3, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-object v5, v0, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v5, v5, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3b

    .line 1784
    iput-object v2, v0, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1786
    :cond_3b
    iget-wide v3, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-object v5, v0, Lcom/samsung/android/knox/location/BoundingBox;->right:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v5, v5, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v3, v3, v5

    if-lez v3, :cond_47

    .line 1787
    iput-object v2, v0, Lcom/samsung/android/knox/location/BoundingBox;->right:Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1789
    :cond_47
    iget-wide v3, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-object v5, v0, Lcom/samsung/android/knox/location/BoundingBox;->top:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v5, v5, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpl-double v3, v3, v5

    if-lez v3, :cond_53

    .line 1790
    iput-object v2, v0, Lcom/samsung/android/knox/location/BoundingBox;->top:Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1792
    :cond_53
    iget-wide v3, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-object v5, v0, Lcom/samsung/android/knox/location/BoundingBox;->bottom:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v5, v5, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpg-double v3, v3, v5

    if-gez v3, :cond_5f

    .line 1794
    iput-object v2, v0, Lcom/samsung/android/knox/location/BoundingBox;->bottom:Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1780
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 1798
    .end local v1    # "i":I
    .end local v2    # "p1":Lcom/samsung/android/knox/location/LatLongPoint;
    :cond_62
    return-object v0
.end method

.method private checkDeviceInsideBoundingbox(Landroid/location/Location;Lcom/samsung/android/knox/location/BoundingBox;)Z
    .registers 10
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "boundingBox"    # Lcom/samsung/android/knox/location/BoundingBox;

    .line 1440
    const/4 v0, 0x0

    if-eqz p1, :cond_33

    iget-object v1, p2, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    if-nez v1, :cond_8

    goto :goto_33

    .line 1442
    :cond_8
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 1443
    .local v1, "lat":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 1445
    .local v3, "lng":D
    iget-object v5, p2, Lcom/samsung/android/knox/location/BoundingBox;->top:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v5, v5, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpg-double v5, v1, v5

    if-gtz v5, :cond_32

    iget-object v5, p2, Lcom/samsung/android/knox/location/BoundingBox;->bottom:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v5, v5, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpl-double v5, v1, v5

    if-ltz v5, :cond_32

    iget-object v5, p2, Lcom/samsung/android/knox/location/BoundingBox;->right:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v5, v5, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v5, v3, v5

    if-gtz v5, :cond_32

    iget-object v5, p2, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v5, v5, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v5, v3, v5

    if-ltz v5, :cond_32

    .line 1447
    const/4 v0, 0x1

    return v0

    .line 1449
    :cond_32
    return v0

    .line 1441
    .end local v1    # "lat":D
    .end local v3    # "lng":D
    :cond_33
    :goto_33
    return v0
.end method

.method private checkDeviceInsideCircleSpherical(Landroid/location/Location;Lcom/samsung/android/knox/location/CircularGeofence;)Z
    .registers 28
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "cfence"    # Lcom/samsung/android/knox/location/CircularGeofence;

    .line 1404
    move-object/from16 v0, p2

    const-wide v1, 0x40b8e30000000000L    # 6371.0

    .line 1406
    .local v1, "R":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    .line 1407
    .local v3, "pointlat":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    .line 1408
    .local v5, "pointlong":D
    iget-object v7, v0, Lcom/samsung/android/knox/location/CircularGeofence;->center:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v7, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 1409
    .local v7, "centerlat":D
    iget-object v9, v0, Lcom/samsung/android/knox/location/CircularGeofence;->center:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v9, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 1411
    .local v9, "centerlong":D
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    .line 1412
    .local v11, "lat2":D
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    .line 1413
    .local v13, "lon2":D
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v15

    .line 1414
    .local v15, "lat1":D
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v17

    .line 1417
    .local v17, "lon1":D
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    mul-double v21, v21, v23

    sub-double v23, v13, v17

    .line 1418
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    mul-double v21, v21, v23

    add-double v19, v19, v21

    .line 1417
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->acos(D)D

    move-result-wide v19

    mul-double v19, v19, v1

    const-wide v21, 0x408f400000000000L    # 1000.0

    mul-double v19, v19, v21

    .line 1420
    .local v19, "distance":D
    move-wide/from16 v21, v1

    .end local v1    # "R":D
    .local v21, "R":D
    iget-wide v1, v0, Lcom/samsung/android/knox/location/CircularGeofence;->radius:D

    cmpg-double v1, v19, v1

    if-gtz v1, :cond_5c

    .line 1421
    const/4 v1, 0x1

    return v1

    .line 1424
    :cond_5c
    const/4 v1, 0x0

    return v1
.end method

.method private checkDeviceInsideLinear(Landroid/location/Location;Lcom/samsung/android/knox/location/LinearGeofence;)Z
    .registers 11
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "lFence"    # Lcom/samsung/android/knox/location/LinearGeofence;

    .line 1556
    iget-object v6, p2, Lcom/samsung/android/knox/location/LinearGeofence;->optimizedPoints:Ljava/util/List;

    .line 1557
    .local v6, "point":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    const/4 v7, 0x1

    .line 1558
    .local v7, "status":Z
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 1559
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 1558
    move-object v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    move v0, v2

    goto :goto_18

    :cond_17
    move v0, v1

    .line 1560
    .end local v7    # "status":Z
    .local v0, "status":Z
    :goto_18
    if-ne v0, v2, :cond_1b

    .line 1561
    return v2

    .line 1564
    :cond_1b
    return v1
.end method

.method private declared-synchronized checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;
    .registers 7
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "sendIntent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1330
    const/4 v0, 0x0

    .line 1332
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_2
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    .line 1334
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1336
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1338
    .local v1, "idItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1339
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1341
    .local v2, "id":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/location/Geofence;

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkGeofenceInsideOrOutside(Landroid/location/Location;Lcom/samsung/android/knox/location/Geofence;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1342
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1344
    .end local v2    # "id":Ljava/lang/Integer;
    .end local p0    # "this":Lcom/android/server/enterprise/geofencing/GeofenceService;
    :cond_37
    goto :goto_1a

    .line 1346
    :cond_38
    const/4 v2, 0x1

    if-ne p2, v2, :cond_3e

    .line 1347
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->sendIntenttoAdmins(Ljava/util/List;)V

    .line 1350
    :cond_3e
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_42
    .catchall {:try_start_2 .. :try_end_42} :catchall_4b

    if-eqz v2, :cond_46

    const/4 v2, 0x0

    goto :goto_47

    :cond_46
    move-object v2, v0

    :goto_47
    monitor-exit p0

    return-object v2

    .line 1353
    .end local v1    # "idItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_49
    monitor-exit p0

    return-object v0

    .line 1329
    .end local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p1    # "location":Landroid/location/Location;
    .end local p2    # "sendIntent":Z
    :catchall_4b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private checkDeviceInsidePolygon(Landroid/location/Location;Lcom/samsung/android/knox/location/PolygonalGeofence;)Z
    .registers 16
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "pFence"    # Lcom/samsung/android/knox/location/PolygonalGeofence;

    .line 1506
    iget-object v6, p2, Lcom/samsung/android/knox/location/PolygonalGeofence;->optimizedPoints:Ljava/util/List;

    .line 1507
    .local v6, "point":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    const/4 v7, 0x1

    .line 1509
    .local v7, "status":Z
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 1510
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 1509
    move-object v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    move v0, v2

    goto :goto_18

    :cond_17
    move v0, v1

    .line 1511
    .end local v7    # "status":Z
    .local v0, "status":Z
    :goto_18
    if-ne v0, v2, :cond_1b

    .line 1512
    return v2

    .line 1514
    :cond_1b
    iget-object v8, p2, Lcom/samsung/android/knox/location/PolygonalGeofence;->pointsWithinGraceLimit:Ljava/util/List;

    .line 1515
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v11

    .line 1514
    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result v3

    if-ne v3, v2, :cond_2e

    move v3, v2

    goto :goto_2f

    :cond_2e
    move v3, v1

    :goto_2f
    move v0, v3

    .line 1516
    if-ne v0, v2, :cond_33

    .line 1517
    return v2

    .line 1519
    :cond_33
    return v1
.end method

.method private checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I
    .registers 19
    .param p2, "testx"    # D
    .param p4, "testy"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;DD)I"
        }
    .end annotation

    .line 1463
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    move-object v0, p1

    const/4 v1, 0x0

    .line 1464
    .local v1, "c":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1465
    .local v2, "nvert":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [D

    .line 1466
    .local v3, "vertx":[D
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [D

    .line 1468
    .local v4, "verty":[D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_30

    .line 1469
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v6, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    aput-wide v6, v3, v5

    .line 1470
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v6, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    aput-wide v6, v4, v5

    .line 1468
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 1483
    :cond_30
    const/4 v5, 0x0

    add-int/lit8 v6, v2, -0x1

    .local v6, "j":I
    :goto_33
    if-ge v5, v2, :cond_6a

    .line 1484
    aget-wide v7, v4, v5

    cmpl-double v7, v7, p4

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lez v7, :cond_3f

    move v7, v9

    goto :goto_40

    :cond_3f
    move v7, v8

    :goto_40
    aget-wide v10, v4, v6

    cmpl-double v10, v10, p4

    if-lez v10, :cond_47

    move v8, v9

    :cond_47
    if-eq v7, v8, :cond_65

    aget-wide v7, v3, v6

    aget-wide v9, v3, v5

    sub-double/2addr v7, v9

    aget-wide v9, v4, v5

    sub-double v9, p4, v9

    mul-double/2addr v7, v9

    aget-wide v9, v4, v6

    aget-wide v11, v4, v5

    sub-double/2addr v9, v11

    div-double/2addr v7, v9

    aget-wide v9, v3, v5

    add-double/2addr v7, v9

    cmpg-double v7, p2, v7

    if-gtz v7, :cond_65

    .line 1487
    if-nez v1, :cond_64

    .line 1488
    const/4 v1, 0x1

    goto :goto_65

    .line 1490
    :cond_64
    const/4 v1, 0x0

    .line 1483
    :cond_65
    :goto_65
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "i":I
    .local v7, "i":I
    move v6, v5

    move v5, v7

    goto :goto_33

    .line 1493
    .end local v7    # "i":I
    .restart local v5    # "i":I
    :cond_6a
    return v1
.end method

.method private checkGeofenceInsideOrOutside(Landroid/location/Location;Lcom/samsung/android/knox/location/Geofence;)Z
    .registers 6
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "fence"    # Lcom/samsung/android/knox/location/Geofence;

    .line 1366
    iget v0, p2, Lcom/samsung/android/knox/location/Geofence;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 1367
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/knox/location/CircularGeofence;

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideCircleSpherical(Landroid/location/Location;Lcom/samsung/android/knox/location/CircularGeofence;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1368
    return v1

    .line 1370
    :cond_f
    iget v0, p2, Lcom/samsung/android/knox/location/Geofence;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_29

    .line 1371
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/knox/location/PolygonalGeofence;

    iget-object v0, v0, Lcom/samsung/android/knox/location/PolygonalGeofence;->boundingBox:Lcom/samsung/android/knox/location/BoundingBox;

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideBoundingbox(Landroid/location/Location;Lcom/samsung/android/knox/location/BoundingBox;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1372
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/knox/location/PolygonalGeofence;

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygon(Landroid/location/Location;Lcom/samsung/android/knox/location/PolygonalGeofence;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1373
    return v1

    .line 1377
    :cond_29
    iget v0, p2, Lcom/samsung/android/knox/location/Geofence;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_43

    .line 1378
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/knox/location/LinearGeofence;

    iget-object v0, v0, Lcom/samsung/android/knox/location/LinearGeofence;->boundingBox:Lcom/samsung/android/knox/location/BoundingBox;

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideBoundingbox(Landroid/location/Location;Lcom/samsung/android/knox/location/BoundingBox;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1379
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/knox/location/LinearGeofence;

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideLinear(Landroid/location/Location;Lcom/samsung/android/knox/location/LinearGeofence;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1380
    return v1

    .line 1385
    :cond_43
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized checkMonitoring()V
    .registers 10

    monitor-enter p0

    .line 1979
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_8

    .line 1980
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->setLocationManager()V

    .line 1984
    .end local p0    # "this":Lcom/android/server/enterprise/geofencing/GeofenceService;
    :cond_8
    sget-object v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 1985
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    sget-object v2, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1986
    sput-object v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    .line 1989
    :cond_16
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_73

    if-eqz v0, :cond_20

    .line 1991
    monitor-exit p0

    return-void

    .line 1995
    .restart local p0    # "this":Lcom/android/server/enterprise/geofencing/GeofenceService;
    :cond_20
    :try_start_20
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 1996
    .local v0, "criteria":Landroid/location/Criteria;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 1997
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 1998
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 1999
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 2000
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 2002
    new-instance v2, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    invoke-direct {v2, p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Lcom/android/server/enterprise/geofencing/GeofenceService$1;)V

    sput-object v2, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    .line 2004
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getEffectiveMinTimeParameter()J

    move-result-wide v3

    .line 2005
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getEffectiveMinDistanceParameter()F

    move-result v5

    sget-object v7, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2006
    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    .line 2004
    move-object v6, v0

    invoke-virtual/range {v2 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_53} :catch_54
    .catchall {:try_start_20 .. :try_end_53} :catchall_73

    .line 2011
    .end local v0    # "criteria":Landroid/location/Criteria;
    goto :goto_71

    .line 2007
    .end local p0    # "this":Lcom/android/server/enterprise/geofencing/GeofenceService;
    :catch_54
    move-exception v0

    .line 2008
    .local v0, "e":Ljava/lang/Exception;
    :try_start_55
    const-string v2, "GeofenceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMonitoring - EX"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    sput-object v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    .line 2010
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceLocationUnavailableMessage(I)V
    :try_end_71
    .catchall {:try_start_55 .. :try_end_71} :catchall_73

    .line 2012
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_71
    monitor-exit p0

    return-void

    .line 1978
    :catchall_73
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private convertToLinear(Lcom/samsung/android/knox/location/LinearGeofence;)Ljava/util/List;
    .registers 14
    .param p1, "lFence"    # Lcom/samsung/android/knox/location/LinearGeofence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/location/LinearGeofence;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;"
        }
    .end annotation

    .line 1286
    iget-object v0, p1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1287
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    add-int/lit8 v2, v0, -0x1

    .line 1288
    .local v2, "j":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1290
    .local v3, "pointList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    const/4 v1, 0x0

    :goto_f
    div-int/lit8 v4, v0, 0x2

    if-ge v1, v4, :cond_4f

    .line 1291
    iget-object v4, p1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v4, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-object v6, p1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v6, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    .line 1292
    .local v4, "midValueLat":D
    iget-object v8, p1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v8, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-object v10, p1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v10, v10, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    add-double/2addr v8, v10

    mul-double/2addr v8, v6

    .line 1293
    .local v8, "midValueLong":D
    new-instance v6, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v6, v4, v5, v8, v9}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 1294
    .local v6, "lTemp":Lcom/samsung/android/knox/location/LatLongPoint;
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1295
    nop

    .end local v4    # "midValueLat":D
    .end local v6    # "lTemp":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v8    # "midValueLong":D
    add-int/lit8 v2, v2, -0x1

    .line 1290
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1298
    :cond_4f
    return-object v3
.end method

.method private createGracePoints(Ljava/util/List;D)Ljava/util/List;
    .registers 33
    .param p2, "graceDistance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;D)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;"
        }
    .end annotation

    .line 847
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 848
    .local v1, "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 849
    .local v2, "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 850
    .local v3, "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    const-wide/16 v4, 0x0

    .local v4, "slopePerpendicularAB":D
    const-wide/16 v6, 0x0

    .line 854
    .local v6, "distanceToPoint":D
    const-wide v8, 0x3f747ae147ae147bL    # 0.005

    .line 856
    .local v8, "latitudeNoise":D
    const-wide v10, 0x3f747ae147ae147bL    # 0.005

    .line 862
    .local v10, "longitudeNoise":D
    const-wide v12, 0x3ee2cc82c7677f8dL    # 8.964E-6

    mul-double v12, v12, p2

    .line 867
    .end local p2    # "graceDistance":D
    .local v12, "graceDistance":D
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_27
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_14a

    .line 868
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v14, v15, :cond_45

    .line 869
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 870
    .local v15, "a":Lcom/samsung/android/knox/location/LatLongPoint;
    move-wide/from16 p2, v4

    .end local v4    # "slopePerpendicularAB":D
    .local p2, "slopePerpendicularAB":D
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    .local v4, "b":Lcom/samsung/android/knox/location/LatLongPoint;
    goto :goto_56

    .line 872
    .end local v15    # "a":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local p2    # "slopePerpendicularAB":D
    .local v4, "slopePerpendicularAB":D
    :cond_45
    move-wide/from16 p2, v4

    .end local v4    # "slopePerpendicularAB":D
    .restart local p2    # "slopePerpendicularAB":D
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 873
    .restart local v15    # "a":Lcom/samsung/android/knox/location/LatLongPoint;
    add-int/lit8 v4, v14, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 876
    .local v4, "b":Lcom/samsung/android/knox/location/LatLongPoint;
    :goto_56
    move-wide/from16 v16, v6

    .end local v6    # "distanceToPoint":D
    .local v16, "distanceToPoint":D
    iget-wide v5, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-object v7, v1

    .end local v1    # "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .local v7, "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    iget-wide v0, v15, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    sub-double/2addr v5, v0

    const-wide/16 v0, 0x0

    cmpl-double v5, v5, v0

    if-nez v5, :cond_75

    .line 877
    iget-wide v5, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpl-double v5, v5, v0

    if-ltz v5, :cond_70

    .line 878
    iget-wide v5, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    sub-double/2addr v5, v8

    iput-wide v5, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    goto :goto_75

    .line 880
    :cond_70
    iget-wide v5, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    add-double/2addr v5, v8

    iput-wide v5, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 883
    :cond_75
    :goto_75
    iget-wide v5, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v18, v8

    .end local v8    # "latitudeNoise":D
    .local v18, "latitudeNoise":D
    iget-wide v8, v15, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double/2addr v5, v8

    cmpl-double v5, v5, v0

    if-nez v5, :cond_91

    .line 884
    iget-wide v5, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v5, v5, v0

    if-ltz v5, :cond_8c

    .line 885
    iget-wide v5, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double/2addr v5, v10

    iput-wide v5, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    goto :goto_91

    .line 887
    :cond_8c
    iget-wide v5, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    add-double/2addr v5, v10

    iput-wide v5, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 890
    :cond_91
    :goto_91
    iget-wide v5, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v8, v15, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double/2addr v5, v8

    iget-wide v8, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v0, v15, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    sub-double/2addr v8, v0

    div-double/2addr v5, v8

    .line 892
    .local v5, "slopeAB":D
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    new-instance v0, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v8, v15, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v22, v10

    .end local v10    # "longitudeNoise":D
    .local v22, "longitudeNoise":D
    iget-wide v10, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    iget-wide v10, v15, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-object/from16 v26, v2

    .end local v2    # "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local v26, "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    iget-wide v1, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    add-double/2addr v10, v1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v1

    invoke-direct {v0, v8, v9, v10, v11}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 900
    .local v0, "mid1":Lcom/samsung/android/knox/location/LatLongPoint;
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    div-double v8, v1, v5

    neg-double v8, v8

    .line 902
    .end local p2    # "slopePerpendicularAB":D
    .local v8, "slopePerpendicularAB":D
    mul-double v10, v8, v8

    add-double/2addr v10, v1

    .line 903
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    div-double v1, v12, v1

    .line 906
    .end local v16    # "distanceToPoint":D
    .local v1, "distanceToPoint":D
    const-wide/16 v10, 0x0

    cmpl-double v16, v5, v10

    if-lez v16, :cond_db

    iget-wide v10, v15, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v24, v12

    .end local v12    # "graceDistance":D
    .local v24, "graceDistance":D
    iget-wide v12, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v10, v10, v12

    if-ltz v10, :cond_eb

    goto :goto_dd

    .end local v24    # "graceDistance":D
    .restart local v12    # "graceDistance":D
    :cond_db
    move-wide/from16 v24, v12

    .end local v12    # "graceDistance":D
    .restart local v24    # "graceDistance":D
    :goto_dd
    const-wide/16 v10, 0x0

    cmpg-double v12, v5, v10

    if-gez v12, :cond_104

    iget-wide v10, v15, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v12, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v10, v10, v12

    if-lez v10, :cond_104

    .line 908
    :cond_eb
    iget-wide v10, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double v12, v8, v1

    add-double/2addr v10, v12

    .line 909
    .local v10, "yNewAbove":D
    iget-wide v12, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v12, v10, v12

    move-wide/from16 p2, v1

    .end local v1    # "distanceToPoint":D
    .local p2, "distanceToPoint":D
    iget-wide v1, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v1, v8

    add-double/2addr v12, v1

    div-double/2addr v12, v8

    .line 911
    .local v12, "xNewAbove":D
    new-instance v1, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v1, v12, v13, v10, v11}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_138

    .line 906
    .end local v10    # "yNewAbove":D
    .end local v12    # "xNewAbove":D
    .end local p2    # "distanceToPoint":D
    .restart local v1    # "distanceToPoint":D
    :cond_104
    move-wide/from16 p2, v1

    .line 916
    .end local v1    # "distanceToPoint":D
    .restart local p2    # "distanceToPoint":D
    const-wide/16 v1, 0x0

    cmpl-double v10, v5, v1

    if-lez v10, :cond_114

    iget-wide v1, v15, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v10, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v1, v1, v10

    if-gtz v1, :cond_122

    :cond_114
    const-wide/16 v1, 0x0

    cmpg-double v1, v5, v1

    if-gez v1, :cond_138

    iget-wide v1, v15, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v10, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v1, v1, v10

    if-gez v1, :cond_138

    .line 918
    :cond_122
    iget-wide v1, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double v10, v8, p2

    sub-double/2addr v1, v10

    .line 919
    .local v1, "yNewAbove":D
    iget-wide v10, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v10, v1, v10

    iget-wide v12, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v12, v8

    add-double/2addr v10, v12

    div-double/2addr v10, v8

    .line 921
    .local v10, "xNewAbove":D
    new-instance v12, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v12, v10, v11, v1, v2}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    .end local v1    # "yNewAbove":D
    .end local v10    # "xNewAbove":D
    :cond_138
    :goto_138
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p1

    move-object v1, v7

    move-wide v4, v8

    move-wide/from16 v8, v18

    move-wide/from16 v10, v22

    move-wide/from16 v12, v24

    move-object/from16 v2, v26

    move-wide/from16 v6, p2

    goto/16 :goto_27

    .end local v0    # "mid1":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v5    # "slopeAB":D
    .end local v7    # "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .end local v15    # "a":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v18    # "latitudeNoise":D
    .end local v22    # "longitudeNoise":D
    .end local v24    # "graceDistance":D
    .end local v26    # "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local p2    # "distanceToPoint":D
    .local v1, "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .restart local v2    # "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local v4, "slopePerpendicularAB":D
    .restart local v6    # "distanceToPoint":D
    .local v8, "latitudeNoise":D
    .local v10, "longitudeNoise":D
    .local v12, "graceDistance":D
    :cond_14a
    move-object/from16 v26, v2

    move-wide/from16 p2, v4

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    move-wide/from16 v22, v10

    move-wide/from16 v24, v12

    move-object v7, v1

    .line 931
    .end local v1    # "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .end local v2    # "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v4    # "slopePerpendicularAB":D
    .end local v6    # "distanceToPoint":D
    .end local v8    # "latitudeNoise":D
    .end local v10    # "longitudeNoise":D
    .end local v12    # "graceDistance":D
    .end local v14    # "i":I
    .restart local v7    # "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .restart local v16    # "distanceToPoint":D
    .restart local v18    # "latitudeNoise":D
    .restart local v22    # "longitudeNoise":D
    .restart local v24    # "graceDistance":D
    .restart local v26    # "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local p2, "slopePerpendicularAB":D
    const/4 v0, 0x0

    .line 932
    .local v0, "z":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 933
    .local v1, "z1":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_165
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_1c5

    .line 935
    move-object/from16 v5, v26

    .end local v26    # "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local v5, "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 936
    .local v8, "m1":D
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 937
    .local v10, "m2":D
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 938
    .local v6, "p1":Lcom/samsung/android/knox/location/LatLongPoint;
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 939
    .local v12, "p2":Lcom/samsung/android/knox/location/LatLongPoint;
    iget-wide v13, v12, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-object v15, v3

    move/from16 v20, v4

    .end local v3    # "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .end local v4    # "j":I
    .local v15, "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .local v20, "j":I
    iget-wide v3, v12, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v3, v10

    sub-double/2addr v13, v3

    iget-wide v3, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move/from16 v21, v1

    move/from16 v26, v2

    .end local v1    # "z1":I
    .end local v2    # "i":I
    .local v21, "z1":I
    .local v26, "i":I
    iget-wide v1, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v1, v8

    sub-double/2addr v3, v1

    sub-double/2addr v13, v3

    sub-double v1, v8, v10

    div-double/2addr v13, v1

    .line 941
    .local v13, "finx":D
    mul-double v1, v8, v13

    iget-wide v3, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v27, v10

    .end local v10    # "m2":D
    .local v27, "m2":D
    iget-wide v10, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v10, v8

    sub-double/2addr v3, v10

    add-double/2addr v1, v3

    .line 942
    .local v1, "finy":D
    new-instance v3, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v3, v13, v14, v1, v2}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "z":I
    .local v3, "z":I
    move v1, v0

    .line 933
    .end local v6    # "p1":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v8    # "m1":D
    .end local v12    # "p2":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v13    # "finx":D
    .end local v21    # "z1":I
    .end local v27    # "m2":D
    .local v1, "z1":I
    add-int/lit8 v2, v26, 0x1

    .end local v26    # "i":I
    .restart local v2    # "i":I
    move/from16 v4, v26

    move v0, v3

    move-object/from16 v26, v5

    move-object v3, v15

    .end local v20    # "j":I
    .restart local v4    # "j":I
    goto :goto_165

    .line 948
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v5    # "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v15    # "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .restart local v0    # "z":I
    .local v3, "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .local v26, "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    :cond_1c5
    return-object v7
.end method

.method private declared-synchronized deleteFromDB(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "_id"    # I

    monitor-enter p0

    .line 1756
    :try_start_1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1757
    .local v0, "userId":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1758
    .local v1, "geofence_id_value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "_id"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1759
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "GEOFENCING"

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFieldsAsUser(Ljava/lang/String;Ljava/util/HashMap;I)I

    move-result v2
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_2c

    if-nez v2, :cond_20

    .line 1761
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 1763
    :cond_20
    :try_start_20
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_2c

    .line 1764
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 1755
    .end local v0    # "userId":I
    .end local v1    # "geofence_id_value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/enterprise/geofencing/GeofenceService;
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "_id":I
    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized deleteGeofenceActiveListByAdmin(I)V
    .registers 7
    .param p1, "uid"    # I

    monitor-enter p0

    .line 1223
    const/4 v0, 0x0

    .line 1226
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_2
    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1230
    .local v1, "columns":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "GEOFENCING"

    invoke-virtual {v2, v3, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_10
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_10} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_3c
    .catchall {:try_start_2 .. :try_end_10} :catchall_3a

    move-object v0, v2

    .line 1232
    if-eqz v0, :cond_31

    .line 1233
    :goto_13
    :try_start_13
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1235
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    const-string v3, "_id"

    .line 1236
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1235
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Landroid/database/SQLException; {:try_start_13 .. :try_end_2c} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2c} :catch_2d
    .catchall {:try_start_13 .. :try_end_2c} :catchall_6d

    goto :goto_13

    .line 1242
    .end local v1    # "columns":[Ljava/lang/String;
    :catch_2d
    move-exception v1

    goto :goto_3d

    .line 1240
    :catch_2f
    move-exception v1

    goto :goto_4b

    .line 1246
    :cond_31
    if-eqz v0, :cond_39

    .line 1247
    :try_start_33
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37
    .catchall {:try_start_33 .. :try_end_36} :catchall_74

    goto :goto_39

    .line 1248
    .end local p0    # "this":Lcom/android/server/enterprise/geofencing/GeofenceService;
    :catch_37
    move-exception v1

    .line 1249
    goto :goto_6b

    .line 1248
    :cond_39
    :goto_39
    goto :goto_6b

    .line 1245
    :catchall_3a
    move-exception v1

    goto :goto_6e

    .line 1242
    :catch_3c
    move-exception v1

    .line 1243
    .local v1, "e":Ljava/lang/Exception;
    :goto_3d
    :try_start_3d
    const-string v2, "GeofenceService"

    const-string v3, "deleteGeofenceActiveListByAdmin - EX"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_3a

    .line 1246
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_39

    .line 1247
    :try_start_46
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_37
    .catchall {:try_start_46 .. :try_end_49} :catchall_74

    goto :goto_39

    .line 1240
    :catch_4a
    move-exception v1

    .line 1241
    .local v1, "sqlEx":Landroid/database/SQLException;
    :goto_4b
    :try_start_4b
    const-string v2, "GeofenceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred accessing Enterprise db "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_4b .. :try_end_65} :catchall_6d

    .line 1246
    .end local v1    # "sqlEx":Landroid/database/SQLException;
    if-eqz v0, :cond_39

    .line 1247
    :try_start_67
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_37
    .catchall {:try_start_67 .. :try_end_6a} :catchall_74

    goto :goto_39

    .line 1250
    :goto_6b
    monitor-exit p0

    return-void

    .line 1245
    .restart local p0    # "this":Lcom/android/server/enterprise/geofencing/GeofenceService;
    :catchall_6d
    move-exception v1

    .line 1246
    :goto_6e
    if-eqz v0, :cond_77

    .line 1247
    :try_start_70
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_76
    .catchall {:try_start_70 .. :try_end_73} :catchall_74

    goto :goto_77

    .line 1222
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/android/server/enterprise/geofencing/GeofenceService;
    .end local p1    # "uid":I
    :catchall_74
    move-exception p1

    goto :goto_79

    .line 1248
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local p1    # "uid":I
    :catch_76
    move-exception v2

    :cond_77
    :goto_77
    nop

    .line 1249
    :try_start_78
    throw v1
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_74

    .line 1222
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local p1    # "uid":I
    :goto_79
    monitor-exit p0

    throw p1
.end method

.method private static deserializeGeoFence([B)Ljava/lang/Object;
    .registers 4
    .param p0, "b"    # [B

    .line 1309
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1310
    .local v1, "in":Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 1311
    .local v2, "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_12} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_13

    .line 1312
    return-object v2

    .line 1315
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .end local v2    # "object":Ljava/lang/Object;
    :catch_13
    move-exception v1

    .line 1316
    .local v1, "ioe":Ljava/io/IOException;
    return-object v0

    .line 1313
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_15
    move-exception v1

    .line 1314
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    return-object v0
.end method

.method private deviceLocationUnavailableMessage(I)V
    .registers 11
    .param p1, "uid"    # I

    .line 1698
    const-string v0, "GeofenceService"

    const-string v1, "DEVICE_LOCATION_UNAVAILABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.DEVICE_LOCATION_UNAVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1700
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const-string v2, "com.samsung.android.knox.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1701
    const-string v1, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1702
    const/4 v2, -0x1

    if-eq p1, v2, :cond_26

    .line 1703
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1705
    :cond_26
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v3, p1}, Lcom/android/server/enterprise/utils/Utils;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v3

    .line 1707
    .local v3, "ownerUid":I
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1712
    :try_start_3c
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1713
    .local v4, "kpuPkgName":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1714
    .local v5, "intentKPU":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v5, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1715
    if-eq p1, v2, :cond_61

    .line 1716
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1718
    :cond_61
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-direct {v2, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_6f} :catch_70

    .line 1721
    .end local v4    # "kpuPkgName":Ljava/lang/String;
    .end local v5    # "intentKPU":Landroid/content/Intent;
    goto :goto_74

    .line 1719
    :catch_70
    move-exception v1

    .line 1720
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1723
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_74
    return-void
.end method

.method private enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 293
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 293
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private findCollinear(Ljava/util/List;)Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;"
        }
    .end annotation

    .line 1812
    .local p1, "point":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "latlongs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1813
    .local v3, "collinear":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    const/4 v4, 0x0

    .line 1815
    .local v4, "p3":Lcom/samsung/android/knox/location/LatLongPoint;
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1817
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v6, 0x1

    .local v6, "j":I
    const/4 v7, 0x2

    .local v7, "k":I
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_97

    .line 1818
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1819
    .local v8, "p1":Lcom/samsung/android/knox/location/LatLongPoint;
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1820
    .local v9, "p2":Lcom/samsung/android/knox/location/LatLongPoint;
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v4, v10

    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1824
    iget-wide v10, v8, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v12, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v14, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    iget-wide v12, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v14, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move/from16 v16, v6

    move/from16 v17, v7

    .end local v6    # "j":I
    .end local v7    # "k":I
    .local v16, "j":I
    .local v17, "k":I
    iget-wide v6, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double/2addr v14, v6

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    iget-wide v6, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v12, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double/2addr v12, v14

    mul-double/2addr v6, v12

    add-double/2addr v10, v6

    .line 1826
    .local v10, "area":D
    const-wide/16 v6, 0x0

    cmpl-double v6, v10, v6

    if-nez v6, :cond_75

    .line 1827
    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_62

    .line 1828
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1829
    :cond_62
    invoke-interface {v3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6b

    .line 1830
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1831
    :cond_6b
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_90

    .line 1832
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_90

    .line 1835
    :cond_75
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8d

    .line 1836
    invoke-direct {v0, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findFirst(Ljava/util/List;)Lcom/samsung/android/knox/location/LatLongPoint;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1837
    invoke-direct {v0, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findLast(Ljava/util/List;)Lcom/samsung/android/knox/location/LatLongPoint;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1838
    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_90

    .line 1840
    :cond_8d
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1817
    :cond_90
    :goto_90
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v16, 0x1

    .end local v16    # "j":I
    .restart local v6    # "j":I
    add-int/lit8 v7, v17, 0x1

    .end local v17    # "k":I
    .restart local v7    # "k":I
    goto :goto_1c

    .line 1843
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v7    # "k":I
    .end local v8    # "p1":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v9    # "p2":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v10    # "area":D
    :cond_97
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1844
    return-object v2
.end method

.method private findFirst(Ljava/util/List;)Lcom/samsung/android/knox/location/LatLongPoint;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;)",
            "Lcom/samsung/android/knox/location/LatLongPoint;"
        }
    .end annotation

    .line 1872
    .local p1, "point":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1874
    .local v0, "first":Lcom/samsung/android/knox/location/LatLongPoint;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 1875
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v2, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v4, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_31

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v2, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v4, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_31

    .line 1876
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1874
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1879
    .end local v1    # "i":I
    :cond_34
    return-object v0
.end method

.method private findLast(Ljava/util/List;)Lcom/samsung/android/knox/location/LatLongPoint;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;)",
            "Lcom/samsung/android/knox/location/LatLongPoint;"
        }
    .end annotation

    .line 1854
    .local p1, "point":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1856
    .local v0, "last":Lcom/samsung/android/knox/location/LatLongPoint;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 1857
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v2, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v4, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_31

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v2, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v4, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_31

    .line 1858
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1856
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1861
    .end local v1    # "i":I
    :cond_34
    return-object v0
.end method

.method private getActiveGeofenceIdsbyAdmin(Ljava/util/List;I)Ljava/util/List;
    .registers 15
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1657
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v0, "_id"

    const-string v1, "adminUid"

    const/4 v2, 0x0

    if-eqz p1, :cond_6c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_6c

    .line 1661
    :cond_e
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1664
    .local v3, "userId":I
    :try_start_12
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1666
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v5

    .line 1670
    .local v5, "columns":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "GEOFENCING"

    invoke-virtual {v6, v7, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 1674
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_27
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_59

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 1675
    .local v8, "item":Landroid/content/ContentValues;
    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1676
    .local v9, "id":I
    invoke-virtual {v8, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 1677
    .local v10, "itemInteger":Ljava/lang/Integer;
    if-eqz v10, :cond_58

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, p2, :cond_58

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {p1, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_58

    .line 1678
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1680
    .end local v8    # "item":Landroid/content/ContentValues;
    .end local v9    # "id":I
    :cond_58
    goto :goto_27

    .line 1682
    .end local v10    # "itemInteger":Ljava/lang/Integer;
    :cond_59
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_5d} :catch_62

    if-eqz v0, :cond_60

    goto :goto_61

    :cond_60
    move-object v2, v4

    :goto_61
    return-object v2

    .line 1683
    .end local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "columns":[Ljava/lang/String;
    .end local v6    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_62
    move-exception v0

    .line 1684
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GeofenceService"

    const-string/jumbo v4, "getActiveGeofenceIdsbyAdmin - EX"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1687
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v2

    .line 1658
    .end local v3    # "userId":I
    :cond_6c
    :goto_6c
    return-object v2
.end method

.method private getEffectiveMinDistanceParameter()F
    .registers 12

    .line 796
    const/4 v0, 0x0

    .line 798
    .local v0, "ret":F
    const-string v1, "distance"

    const-string/jumbo v2, "state"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    .line 803
    .local v3, "columns":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "GEOFENCINGSETTINGS"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 807
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 808
    .local v6, "item":Landroid/content/ContentValues;
    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 809
    .local v7, "cvInteger":Ljava/lang/Integer;
    if-eqz v7, :cond_2f

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_2f

    .line 810
    goto :goto_16

    .line 814
    :cond_2f
    nop

    .line 815
    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 814
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToFloat(Ljava/lang/String;)F

    move-result v8

    .line 816
    .local v8, "value":F
    const/4 v9, 0x0

    cmpl-float v10, v0, v9

    if-nez v10, :cond_3f

    .line 817
    move v0, v8

    goto :goto_48

    .line 818
    :cond_3f
    cmpl-float v9, v8, v9

    if-eqz v9, :cond_48

    cmpl-float v9, v0, v8

    if-lez v9, :cond_48

    .line 819
    move v0, v8

    .line 821
    .end local v6    # "item":Landroid/content/ContentValues;
    .end local v8    # "value":F
    :cond_48
    :goto_48
    goto :goto_16

    .line 823
    .end local v7    # "cvInteger":Ljava/lang/Integer;
    :cond_49
    return v0
.end method

.method private getEffectiveMinTimeParameter()J
    .registers 15

    .line 727
    const-wide/16 v0, 0x0

    .line 729
    .local v0, "ret":J
    const-string/jumbo v2, "time"

    const-string/jumbo v3, "state"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    .line 734
    .local v4, "columns":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "GEOFENCINGSETTINGS"

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 738
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_4c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 739
    .local v7, "item":Landroid/content/ContentValues;
    invoke-virtual {v7, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 740
    .local v10, "cvInteger":Ljava/lang/Integer;
    if-eqz v10, :cond_33

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-nez v11, :cond_33

    .line 741
    goto :goto_18

    .line 745
    :cond_33
    nop

    .line 746
    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 745
    invoke-direct {p0, v11}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 747
    .local v11, "value":J
    cmp-long v13, v0, v8

    if-nez v13, :cond_42

    .line 748
    move-wide v0, v11

    goto :goto_4b

    .line 749
    :cond_42
    cmp-long v8, v11, v8

    if-eqz v8, :cond_4b

    cmp-long v8, v0, v11

    if-lez v8, :cond_4b

    .line 750
    move-wide v0, v11

    .line 752
    .end local v7    # "item":Landroid/content/ContentValues;
    .end local v11    # "value":J
    :cond_4b
    :goto_4b
    goto :goto_18

    .line 754
    .end local v10    # "cvInteger":Ljava/lang/Integer;
    :cond_4c
    cmp-long v2, v0, v8

    if-nez v2, :cond_54

    const-wide/32 v2, 0xea60

    goto :goto_55

    :cond_54
    move-wide v2, v0

    :goto_55
    return-wide v2
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 7
    .param p1, "uid"    # I

    .line 1730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@getPackageNameForUid - uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeofenceService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_22

    const/16 v0, 0x4e1f

    if-le p1, v0, :cond_2a

    .line 1733
    :cond_22
    const-string v0, "@getPackageNameForUid - returning UMC PACKAGENAME"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms"

    return-object v0

    .line 1736
    :cond_2a
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "ADMIN_INFO"

    const-string v3, "adminName"

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1738
    .local v0, "pkgName":Ljava/lang/String;
    if-nez v0, :cond_3d

    .line 1739
    const-string v2, "@getPackageNameForUid - returning null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    const/4 v1, 0x0

    return-object v1

    .line 1743
    :cond_3d
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1744
    .local v2, "compName":Landroid/content/ComponentName;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@getPackageNameForUid - returning compName.getPackageName() --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initializeHandlerThread()V
    .registers 3

    .line 135
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GeofenceService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 136
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 137
    new-instance v0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 138
    return-void
.end method

.method private isAdminHasGeofence(I)Z
    .registers 7
    .param p1, "uid"    # I

    .line 1253
    const-string v0, "GeofenceService"

    const/4 v1, 0x0

    .line 1256
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_3
    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 1260
    .local v2, "columns":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCING"

    invoke-virtual {v3, v4, p1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v1, v3

    .line 1263
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_16
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_16} :catch_32
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_22
    .catchall {:try_start_3 .. :try_end_16} :catchall_20

    .line 1271
    if-eqz v1, :cond_1e

    .line 1272
    :try_start_18
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_1e

    .line 1274
    :catch_1c
    move-exception v3

    goto :goto_1f

    .line 1275
    :cond_1e
    :goto_1e
    nop

    .line 1263
    :goto_1f
    return v0

    .line 1270
    .end local v2    # "columns":[Ljava/lang/String;
    :catchall_20
    move-exception v0

    goto :goto_53

    .line 1267
    :catch_22
    move-exception v2

    .line 1268
    .local v2, "e":Ljava/lang/Exception;
    :try_start_23
    const-string/jumbo v3, "isAdminHasGeofence - EX"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_20

    .line 1271
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_31

    .line 1272
    :try_start_2b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_31

    .line 1274
    :catch_2f
    move-exception v0

    .line 1276
    goto :goto_51

    .line 1275
    :cond_31
    :goto_31
    goto :goto_51

    .line 1265
    :catch_32
    move-exception v2

    .line 1266
    .local v2, "sqlEx":Landroid/database/SQLException;
    :try_start_33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred accessing Enterprise db "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_20

    .line 1271
    .end local v2    # "sqlEx":Landroid/database/SQLException;
    if-eqz v1, :cond_31

    .line 1272
    :try_start_4d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_2f

    goto :goto_31

    .line 1277
    :goto_51
    const/4 v0, 0x0

    return v0

    .line 1271
    :goto_53
    if-eqz v1, :cond_5b

    .line 1272
    :try_start_55
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_5b

    .line 1274
    :catch_59
    move-exception v2

    goto :goto_5c

    .line 1275
    :cond_5b
    :goto_5b
    nop

    .line 1276
    :goto_5c
    throw v0
.end method

.method private isDeviceInsideGeofence(I)Ljava/util/List;
    .registers 11
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 585
    const-string v0, "GeofenceService"

    const-string/jumbo v1, "isDeviceInsideGeofence"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 588
    .local v1, "token":J
    const/4 v3, 0x0

    .line 589
    .local v3, "activeGeofences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 591
    .local v4, "location":Landroid/location/Location;
    new-instance v5, Landroid/location/Criteria;

    invoke-direct {v5}, Landroid/location/Criteria;-><init>()V

    .line 592
    .local v5, "criteria":Landroid/location/Criteria;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 593
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 594
    invoke-virtual {v5, v7}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 595
    invoke-virtual {v5, v7}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 596
    invoke-virtual {v5, v6}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 599
    :try_start_24
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocation:Landroid/location/Location;

    move-object v4, v8

    .line 600
    if-nez v4, :cond_41

    .line 601
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v8, v5, v6}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v6

    .line 602
    .local v6, "provider":Ljava/lang/String;
    if-eqz v6, :cond_41

    const-string/jumbo v8, "passive"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_41

    .line 603
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v8, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_40} :catch_42

    move-object v4, v0

    .line 610
    .end local v6    # "provider":Ljava/lang/String;
    :cond_41
    goto :goto_4d

    .line 606
    :catch_42
    move-exception v6

    .line 607
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "isDeviceInsideGeofence - EX"

    invoke-static {v0, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 608
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 609
    const/4 v4, 0x0

    .line 612
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_4d
    if-nez v4, :cond_53

    .line 613
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceLocationUnavailableMessage(I)V

    goto :goto_5b

    .line 615
    :cond_53
    invoke-direct {p0, v4, v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;

    move-result-object v0

    .line 616
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getActiveGeofenceIdsbyAdmin(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    .line 619
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_5b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 620
    return-object v3
.end method

.method private declared-synchronized loadGeofenceActiveList(I)V
    .registers 12
    .param p1, "userId"    # I

    monitor-enter p0

    .line 1140
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1141
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 1142
    .local v1, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_77

    .line 1145
    .local v3, "user":Landroid/content/pm/UserInfo;
    :try_start_20
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "GEOFENCINGSETTINGS"

    const-string v6, "adminUid"

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1148
    .local v4, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 1150
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_35
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1152
    .local v6, "storedUid":I
    iget-object v7, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "GEOFENCINGSETTINGS"

    const-string/jumbo v9, "state"

    invoke-virtual {v7, v6, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_56

    .line 1155
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_56} :catch_58
    .catchall {:try_start_20 .. :try_end_56} :catchall_77

    .line 1157
    .end local v6    # "storedUid":I
    .end local p0    # "this":Lcom/android/server/enterprise/geofencing/GeofenceService;
    :cond_56
    goto :goto_35

    .line 1161
    .end local v4    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_57
    goto :goto_74

    .line 1159
    :catch_58
    move-exception v4

    .line 1160
    .local v4, "e":Ljava/lang/Exception;
    :try_start_59
    const-string v5, "GeofenceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadGeofenceActiveList - EX"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_59 .. :try_end_74} :catchall_77

    .line 1162
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_74
    goto :goto_14

    .line 1164
    :cond_75
    monitor-exit p0

    return-void

    .line 1139
    .end local v0    # "userManager":Landroid/os/UserManager;
    .end local v1    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local p1    # "userId":I
    :catchall_77
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private parseStringToFloat(Ljava/lang/String;)F
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .line 828
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 829
    :catch_5
    move-exception v0

    .line 830
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method private parseStringToLong(Ljava/lang/String;)J
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .line 836
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-wide v0

    .line 837
    :catch_5
    move-exception v0

    .line 838
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private sendIntenttoAdmins(Ljava/util/List;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1576
    .local p1, "relevantGeofences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v1, p0

    const-string v2, "GeofenceService"

    const-string/jumbo v0, "sendIntenttoAdmins"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    iget-object v0, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/UserManager;

    .line 1578
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 1581
    .local v4, "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 1582
    .local v6, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1583
    goto :goto_1e

    .line 1586
    :cond_36
    iget-object v0, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    const-string v8, "ADMIN"

    const-string v9, "adminUid"

    invoke-virtual {v0, v8, v9, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v7

    .line 1589
    .local v7, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_46
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1590
    .local v9, "uid":I
    move-object/from16 v10, p1

    invoke-direct {v1, v10, v9}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getActiveGeofenceIdsbyAdmin(Ljava/util/List;I)Ljava/util/List;

    move-result-object v11

    .line 1592
    .local v11, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v0, "com.samsung.android.knox.intent.extra.USER_ID"

    const-string v12, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    const-string v13, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    if-eqz v11, :cond_124

    .line 1593
    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.action.DEVICE_INSIDE_GEOFENCE"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1594
    .local v14, "intent":Landroid/content/Intent;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    new-array v15, v15, [I

    .line 1595
    .local v15, "id":[I
    const/16 v16, 0x0

    move-object/from16 v17, v3

    move/from16 v3, v16

    .local v3, "i":I
    .local v17, "userManager":Landroid/os/UserManager;
    :goto_77
    move-object/from16 v16, v4

    .end local v4    # "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v16, "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_90

    .line 1596
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v15, v3

    .line 1595
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, v16

    goto :goto_77

    .line 1598
    .end local v3    # "i":I
    :cond_90
    const-string v3, "com.samsung.android.knox.intent.extra.ID"

    invoke-virtual {v14, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1599
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v14, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1600
    invoke-virtual {v14, v13, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1601
    iget-object v0, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v0, v9}, Lcom/android/server/enterprise/utils/Utils;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v3

    .line 1603
    .local v3, "ownerUid":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@sendIntenttoAdmins - ownerUid = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    invoke-direct {v1, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v4

    .line 1605
    .local v4, "thePackageNameFortheUID":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v5

    const-string v5, "@sendIntenttoAdmins - thePackageNameFortheUID = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    invoke-virtual {v14, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1607
    iget-object v0, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    .line 1608
    move-object/from16 v19, v2

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {v5, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 1607
    invoke-virtual {v0, v14, v5, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1612
    :try_start_e6
    iget-object v0, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1613
    .local v0, "kpuPkgName":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v14}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1614
    .local v2, "intentKPU":Landroid/content/Intent;
    iget-object v5, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_fb} :catch_11c

    move-object/from16 v20, v4

    .end local v4    # "thePackageNameFortheUID":Ljava/lang/String;
    .local v20, "thePackageNameFortheUID":Ljava/lang/String;
    :try_start_fd
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v5, v0, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1615
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1616
    iget-object v4, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-direct {v5, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v2, v5, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_119} :catch_11a

    .line 1619
    .end local v0    # "kpuPkgName":Ljava/lang/String;
    .end local v2    # "intentKPU":Landroid/content/Intent;
    goto :goto_122

    .line 1617
    :catch_11a
    move-exception v0

    goto :goto_11f

    .end local v20    # "thePackageNameFortheUID":Ljava/lang/String;
    .restart local v4    # "thePackageNameFortheUID":Ljava/lang/String;
    :catch_11c
    move-exception v0

    move-object/from16 v20, v4

    .line 1618
    .end local v4    # "thePackageNameFortheUID":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v20    # "thePackageNameFortheUID":Ljava/lang/String;
    :goto_11f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1621
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "ownerUid":I
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v15    # "id":[I
    .end local v20    # "thePackageNameFortheUID":Ljava/lang/String;
    :goto_122
    goto/16 :goto_19f

    .line 1623
    .end local v16    # "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v17    # "userManager":Landroid/os/UserManager;
    .local v3, "userManager":Landroid/os/UserManager;
    .local v4, "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_124
    move-object/from16 v19, v2

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    .end local v3    # "userManager":Landroid/os/UserManager;
    .end local v4    # "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v16    # "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v17    # "userManager":Landroid/os/UserManager;
    :try_start_12c
    iget-object v2, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "GEOFENCINGSETTINGS"

    const-string/jumbo v4, "state"

    invoke-virtual {v2, v9, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19d

    .line 1625
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.action.DEVICE_OUTSIDE_GEOFENCE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1626
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1627
    invoke-virtual {v2, v13, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1628
    iget-object v0, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v0, v9}, Lcom/android/server/enterprise/utils/Utils;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v0

    move v3, v0

    .line 1630
    .local v3, "ownerUid":I
    invoke-direct {v1, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1631
    iget-object v0, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    .line 1632
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 1631
    invoke-virtual {v0, v2, v4, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_167} :catch_19e

    .line 1637
    :try_start_167
    iget-object v0, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1638
    .local v0, "kpuPkgName":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1639
    .local v4, "intentKPU":Landroid/content/Intent;
    iget-object v5, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v14

    invoke-virtual {v5, v0, v14}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1640
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1641
    iget-object v5, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v13, Landroid/os/UserHandle;

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    invoke-direct {v13, v14}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v4, v13, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_198
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_198} :catch_199

    .line 1644
    .end local v0    # "kpuPkgName":Ljava/lang/String;
    .end local v4    # "intentKPU":Landroid/content/Intent;
    goto :goto_19d

    .line 1642
    :catch_199
    move-exception v0

    .line 1643
    .local v0, "e":Ljava/lang/Exception;
    :try_start_19a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_19a .. :try_end_19d} :catch_19e

    .line 1649
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "ownerUid":I
    :cond_19d
    :goto_19d
    goto :goto_19f

    .line 1647
    :catch_19e
    move-exception v0

    .line 1651
    .end local v9    # "uid":I
    .end local v11    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_19f
    move-object/from16 v4, v16

    move-object/from16 v3, v17

    move-object/from16 v5, v18

    move-object/from16 v2, v19

    goto/16 :goto_46

    .line 1589
    .end local v16    # "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v17    # "userManager":Landroid/os/UserManager;
    .local v3, "userManager":Landroid/os/UserManager;
    .local v4, "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1a9
    move-object/from16 v10, p1

    move-object/from16 v19, v2

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    .line 1652
    .end local v3    # "userManager":Landroid/os/UserManager;
    .end local v4    # "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v16    # "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v17    # "userManager":Landroid/os/UserManager;
    goto/16 :goto_1e

    .line 1653
    .end local v16    # "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v17    # "userManager":Landroid/os/UserManager;
    .restart local v3    # "userManager":Landroid/os/UserManager;
    .restart local v4    # "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1b5
    return-void
.end method

.method private serializeGeoFence(Ljava/lang/Object;)[B
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1933
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1936
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1937
    .local v1, "out":Ljava/io/ObjectOutput;
    invoke-interface {v1, p1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1938
    invoke-interface {v1}, Ljava/io/ObjectOutput;->close()V

    .line 1942
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_15

    return-object v2

    .line 1943
    .end local v1    # "out":Ljava/io/ObjectOutput;
    :catch_15
    move-exception v1

    .line 1944
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1946
    const/4 v2, 0x0

    return-object v2
.end method

.method private setLocationManager()V
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    .line 163
    return-void
.end method

.method private declared-synchronized updateGeofenceActiveListbyAdmin(I)V
    .registers 10
    .param p1, "uid"    # I

    monitor-enter p0

    .line 1167
    const/4 v0, 0x0

    .line 1170
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_2
    const-string v1, "_id"

    const-string/jumbo v2, "type"

    const-string v3, "blobdata"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 1175
    .local v1, "columns":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "GEOFENCING"

    invoke-virtual {v2, v3, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_15
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_15} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_9c
    .catchall {:try_start_2 .. :try_end_15} :catchall_9a

    move-object v0, v2

    .line 1178
    if-eqz v0, :cond_91

    .line 1179
    :goto_18
    :try_start_18
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_91

    .line 1181
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1183
    .local v2, "id":I
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8c

    .line 1185
    const-string/jumbo v3, "type"

    .line 1186
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1185
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1187
    .local v3, "type":I
    const-string v4, "blobdata"

    .line 1188
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1187
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 1190
    .local v4, "data":[B
    const/4 v5, 0x2

    if-ne v3, v5, :cond_61

    .line 1191
    invoke-static {v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/location/PolygonalGeofence;

    .line 1192
    .local v5, "pFence":Lcom/samsung/android/knox/location/PolygonalGeofence;
    iput v2, v5, Lcom/samsung/android/knox/location/PolygonalGeofence;->id:I

    .line 1193
    iput v3, v5, Lcom/samsung/android/knox/location/PolygonalGeofence;->type:I

    .line 1194
    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    nop

    .end local v5    # "pFence":Lcom/samsung/android/knox/location/PolygonalGeofence;
    goto :goto_8c

    :cond_61
    const/4 v5, 0x3

    if-ne v3, v5, :cond_79

    .line 1196
    invoke-static {v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/location/LinearGeofence;

    .line 1197
    .local v5, "lFence":Lcom/samsung/android/knox/location/LinearGeofence;
    iput v2, v5, Lcom/samsung/android/knox/location/LinearGeofence;->id:I

    .line 1198
    iput v3, v5, Lcom/samsung/android/knox/location/LinearGeofence;->type:I

    .line 1199
    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    nop

    .end local v5    # "lFence":Lcom/samsung/android/knox/location/LinearGeofence;
    goto :goto_8c

    .line 1201
    :cond_79
    invoke-static {v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/location/CircularGeofence;

    .line 1202
    .local v5, "cFence":Lcom/samsung/android/knox/location/CircularGeofence;
    iput v2, v5, Lcom/samsung/android/knox/location/CircularGeofence;->id:I

    .line 1203
    iput v3, v5, Lcom/samsung/android/knox/location/CircularGeofence;->type:I

    .line 1204
    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8c
    .catch Landroid/database/SQLException; {:try_start_18 .. :try_end_8c} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_8c} :catch_8d
    .catchall {:try_start_18 .. :try_end_8c} :catchall_ce

    .line 1207
    .end local v2    # "id":I
    .end local v3    # "type":I
    .end local v4    # "data":[B
    .end local v5    # "cFence":Lcom/samsung/android/knox/location/CircularGeofence;
    :cond_8c
    :goto_8c
    goto :goto_18

    .line 1212
    .end local v1    # "columns":[Ljava/lang/String;
    :catch_8d
    move-exception v1

    goto :goto_9d

    .line 1210
    :catch_8f
    move-exception v1

    goto :goto_ac

    .line 1216
    :cond_91
    if-eqz v0, :cond_99

    .line 1217
    :try_start_93
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_97
    .catchall {:try_start_93 .. :try_end_96} :catchall_d5

    goto :goto_99

    .line 1218
    .end local p0    # "this":Lcom/android/server/enterprise/geofencing/GeofenceService;
    :catch_97
    move-exception v1

    .line 1219
    goto :goto_cc

    .line 1218
    :cond_99
    :goto_99
    goto :goto_cc

    .line 1215
    :catchall_9a
    move-exception v1

    goto :goto_cf

    .line 1212
    :catch_9c
    move-exception v1

    .line 1213
    .local v1, "e":Ljava/lang/Exception;
    :goto_9d
    :try_start_9d
    const-string v2, "GeofenceService"

    const-string/jumbo v3, "updateGeofenceActiveList - EX"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a5
    .catchall {:try_start_9d .. :try_end_a5} :catchall_9a

    .line 1216
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_99

    .line 1217
    :try_start_a7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_aa} :catch_97
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_d5

    goto :goto_99

    .line 1210
    :catch_ab
    move-exception v1

    .line 1211
    .local v1, "sqlEx":Landroid/database/SQLException;
    :goto_ac
    :try_start_ac
    const-string v2, "GeofenceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred accessing Enterprise db "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_ac .. :try_end_c6} :catchall_ce

    .line 1216
    .end local v1    # "sqlEx":Landroid/database/SQLException;
    if-eqz v0, :cond_99

    .line 1217
    :try_start_c8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cb} :catch_97
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_d5

    goto :goto_99

    .line 1220
    :goto_cc
    monitor-exit p0

    return-void

    .line 1215
    .restart local p0    # "this":Lcom/android/server/enterprise/geofencing/GeofenceService;
    :catchall_ce
    move-exception v1

    .line 1216
    :goto_cf
    if-eqz v0, :cond_d8

    .line 1217
    :try_start_d1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d4} :catch_d7
    .catchall {:try_start_d1 .. :try_end_d4} :catchall_d5

    goto :goto_d8

    .line 1166
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/android/server/enterprise/geofencing/GeofenceService;
    .end local p1    # "uid":I
    :catchall_d5
    move-exception p1

    goto :goto_da

    .line 1218
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local p1    # "uid":I
    :catch_d7
    move-exception v2

    :cond_d8
    :goto_d8
    nop

    .line 1219
    :try_start_d9
    throw v1
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d5

    .line 1166
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local p1    # "uid":I
    :goto_da
    monitor-exit p0

    throw p1
.end method

.method private validateCircularGeofence(Lcom/samsung/android/knox/location/LatLongPoint;D)Z
    .registers 9
    .param p1, "center"    # Lcom/samsung/android/knox/location/LatLongPoint;
    .param p2, "radius"    # D

    .line 1961
    const/4 v0, 0x1

    .line 1962
    .local v0, "valid":Z
    const-wide/16 v1, 0x0

    cmpg-double v1, p2, v1

    if-gtz v1, :cond_9

    .line 1963
    const/4 v0, 0x0

    goto :goto_36

    .line 1965
    :cond_9
    iget-wide v1, p1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    const-wide v3, 0x4056800000000000L    # 90.0

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_35

    iget-wide v1, p1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    const-wide v3, -0x3fa9800000000000L    # -90.0

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_35

    iget-wide v1, p1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    const-wide v3, 0x4066800000000000L    # 180.0

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_35

    iget-wide v1, p1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    const-wide v3, -0x3f99800000000000L    # -180.0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_36

    .line 1967
    :cond_35
    const/4 v0, 0x0

    .line 1970
    :cond_36
    :goto_36
    return v0
.end method

.method private validatePolygonalGeofence(Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;)Z"
        }
    .end annotation

    .line 1891
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    const/4 v0, 0x1

    .line 1892
    .local v0, "valid":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    .line 1893
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1894
    .local v2, "latlongPoint":Lcom/samsung/android/knox/location/LatLongPoint;
    iget-wide v3, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    const-wide v5, 0x4056800000000000L    # 90.0

    cmpl-double v3, v3, v5

    if-gtz v3, :cond_3e

    iget-wide v3, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    const-wide v5, -0x3fa9800000000000L    # -90.0

    cmpg-double v3, v3, v5

    if-ltz v3, :cond_3e

    iget-wide v3, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    const-wide v5, 0x4066800000000000L    # 180.0

    cmpl-double v3, v3, v5

    if-gtz v3, :cond_3e

    iget-wide v3, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    const-wide v5, -0x3f99800000000000L    # -180.0

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3b

    goto :goto_3e

    .line 1892
    .end local v2    # "latlongPoint":Lcom/samsung/android/knox/location/LatLongPoint;
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1897
    .restart local v2    # "latlongPoint":Lcom/samsung/android/knox/location/LatLongPoint;
    :cond_3e
    :goto_3e
    const/4 v0, 0x0

    .line 1898
    return v0

    .line 1901
    .end local v1    # "i":I
    .end local v2    # "latlongPoint":Lcom/samsung/android/knox/location/LatLongPoint;
    :cond_40
    return v0
.end method

.method private writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # I
    .param p3, "serializedBlob"    # [B

    .line 1912
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1913
    .local v0, "callingUid":I
    if-nez p3, :cond_6

    .line 1914
    const/4 v1, -0x1

    return v1

    .line 1915
    :cond_6
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1916
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "adminUid"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1917
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1918
    const-string v2, "blobdata"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1919
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "GEOFENCING"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    .line 1921
    .local v2, "id":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V

    .line 1922
    return v2
.end method


# virtual methods
.method public createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/CircularGeofence;)I
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "circularGeofence"    # Lcom/samsung/android/knox/location/CircularGeofence;

    .line 401
    const-string v0, "GeofenceService"

    const-string v1, "createGeofence"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 403
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 405
    .local v0, "callingUid":I
    const/4 v1, -0x1

    .line 406
    .local v1, "id":I
    iget-object v2, p2, Lcom/samsung/android/knox/location/CircularGeofence;->center:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v3, p2, Lcom/samsung/android/knox/location/CircularGeofence;->radius:D

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validateCircularGeofence(Lcom/samsung/android/knox/location/LatLongPoint;D)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 408
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v2

    .line 409
    .local v2, "serializedBlob":[B
    if-nez v2, :cond_1f

    .line 410
    return v1

    .line 412
    :cond_1f
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I

    move-result v1

    .line 413
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 414
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 415
    .local v3, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 418
    .end local v2    # "serializedBlob":[B
    .end local v3    # "message":Landroid/os/Message;
    :cond_3d
    return v1
.end method

.method public createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/Geofence;)I
    .registers 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "geofence"    # Lcom/samsung/android/knox/location/Geofence;

    .line 337
    const/4 v0, -0x1

    .line 339
    .local v0, "id":I
    iget v1, p2, Lcom/samsung/android/knox/location/Geofence;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    .line 340
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/knox/location/CircularGeofence;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/CircularGeofence;)I

    move-result v0

    goto :goto_27

    .line 343
    :cond_e
    iget v1, p2, Lcom/samsung/android/knox/location/Geofence;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    .line 344
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/knox/location/PolygonalGeofence;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/PolygonalGeofence;)I

    move-result v0

    goto :goto_27

    .line 347
    :cond_1b
    iget v1, p2, Lcom/samsung/android/knox/location/Geofence;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_27

    .line 348
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/knox/location/LinearGeofence;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/LinearGeofence;)I

    move-result v0

    .line 350
    :cond_27
    :goto_27
    return v0
.end method

.method public createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/LinearGeofence;)I
    .registers 20
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "linearGeofence"    # Lcom/samsung/android/knox/location/LinearGeofence;

    .line 359
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "GeofenceService"

    const-string v3, "createGeofence"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    .line 361
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v2, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    iget v3, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 362
    .local v3, "callingUid":I
    const/4 v4, -0x1

    .line 363
    .local v4, "id":I
    iget-wide v11, v1, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    .line 364
    .local v11, "toleranceVal":D
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v5, "polygonList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    iget-wide v6, v1, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_26

    .line 366
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iput-wide v6, v1, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    goto :goto_38

    .line 367
    :cond_26
    iget-wide v6, v1, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    const-wide v8, 0x412e848000000000L    # 1000000.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_38

    .line 368
    const-wide v6, 0x412e847e00000000L    # 999999.0

    iput-wide v6, v1, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    .line 370
    :cond_38
    :goto_38
    iget-object v6, v1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    iget-wide v7, v1, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createPolygonalPoints2(Ljava/util/List;D)Ljava/util/List;

    move-result-object v13

    .line 372
    .end local v5    # "polygonList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .local v13, "polygonList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_90

    .line 373
    invoke-direct {v0, v13}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validatePolygonalGeofence(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 374
    invoke-direct {v0, v13}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findCollinear(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 375
    .local v14, "latlongs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    if-eqz v14, :cond_8d

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v6, :cond_5a

    goto :goto_8d

    .line 377
    :cond_5a
    invoke-direct {v0, v14}, Lcom/android/server/enterprise/geofencing/GeofenceService;->calcBoundingBox(Ljava/util/List;)Lcom/samsung/android/knox/location/BoundingBox;

    move-result-object v15

    .line 378
    .local v15, "boundingBox":Lcom/samsung/android/knox/location/BoundingBox;
    new-instance v16, Lcom/samsung/android/knox/location/LinearGeofence;

    move-object/from16 v5, v16

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    move-wide v9, v11

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/knox/location/LinearGeofence;-><init>(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/location/BoundingBox;D)V

    .line 380
    .local v5, "lFence":Lcom/samsung/android/knox/location/LinearGeofence;
    invoke-direct {v0, v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v6

    .line 381
    .local v6, "serializedBlob":[B
    const/4 v7, 0x3

    invoke-direct {v0, v2, v7, v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I

    move-result v4

    .line 382
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v7

    if-eqz v7, :cond_8f

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 384
    .local v7, "message":Landroid/os/Message;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8f

    .line 376
    .end local v5    # "lFence":Lcom/samsung/android/knox/location/LinearGeofence;
    .end local v6    # "serializedBlob":[B
    .end local v7    # "message":Landroid/os/Message;
    .end local v15    # "boundingBox":Lcom/samsung/android/knox/location/BoundingBox;
    :cond_8d
    :goto_8d
    const/4 v5, -0x1

    return v5

    .line 387
    .end local v14    # "latlongs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    :cond_8f
    :goto_8f
    return v4

    .line 389
    :cond_90
    return v4
.end method

.method public createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/PolygonalGeofence;)I
    .registers 20
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "polygonalGeofence"    # Lcom/samsung/android/knox/location/PolygonalGeofence;

    .line 429
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "GeofenceService"

    const-string v3, "createGeofence"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    .line 431
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v2, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    iget v3, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 434
    .local v3, "callingUid":I
    const/4 v4, -0x1

    .line 435
    .local v4, "id":I
    iget-object v5, v1, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_7b

    .line 436
    iget-object v5, v1, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validatePolygonalGeofence(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 437
    iget-object v5, v1, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findCollinear(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 438
    .local v5, "latlongs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    if-eqz v5, :cond_79

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v6, :cond_32

    goto :goto_79

    .line 440
    :cond_32
    invoke-direct {v0, v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->calcBoundingBox(Ljava/util/List;)Lcom/samsung/android/knox/location/BoundingBox;

    move-result-object v14

    .line 441
    .local v14, "boundingBox":Lcom/samsung/android/knox/location/BoundingBox;
    iget-wide v7, v1, Lcom/samsung/android/knox/location/PolygonalGeofence;->graceDistance:D

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_41

    .line 442
    move-object v7, v5

    move-object v15, v7

    .local v7, "gracePoints":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    goto :goto_48

    .line 444
    .end local v7    # "gracePoints":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    :cond_41
    iget-wide v7, v1, Lcom/samsung/android/knox/location/PolygonalGeofence;->graceDistance:D

    invoke-direct {v0, v5, v7, v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGracePoints(Ljava/util/List;D)Ljava/util/List;

    move-result-object v7

    move-object v15, v7

    .line 448
    .local v15, "gracePoints":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    :goto_48
    new-instance v16, Lcom/samsung/android/knox/location/PolygonalGeofence;

    iget-object v8, v1, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    iget-wide v9, v1, Lcom/samsung/android/knox/location/PolygonalGeofence;->graceDistance:D

    move-object/from16 v7, v16

    move-object v11, v5

    move-object v12, v15

    move-object v13, v14

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/knox/location/PolygonalGeofence;-><init>(Ljava/util/List;DLjava/util/List;Ljava/util/List;Lcom/samsung/android/knox/location/BoundingBox;)V

    .line 450
    .local v7, "pGeofence":Lcom/samsung/android/knox/location/PolygonalGeofence;
    invoke-direct {v0, v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v8

    .line 451
    .local v8, "serializedBlob":[B
    invoke-direct {v0, v2, v6, v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I

    move-result v4

    .line 453
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v9, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 455
    .local v6, "message":Landroid/os/Message;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7b

    .line 439
    .end local v6    # "message":Landroid/os/Message;
    .end local v7    # "pGeofence":Lcom/samsung/android/knox/location/PolygonalGeofence;
    .end local v8    # "serializedBlob":[B
    .end local v14    # "boundingBox":Lcom/samsung/android/knox/location/BoundingBox;
    .end local v15    # "gracePoints":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    :cond_79
    :goto_79
    const/4 v6, -0x1

    return v6

    .line 459
    .end local v5    # "latlongs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    :cond_7b
    :goto_7b
    return v4
.end method

.method public createPolygonalPoints2(Ljava/util/List;D)Ljava/util/List;
    .registers 42
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;D)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;"
        }
    .end annotation

    .line 957
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 958
    .local v1, "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 959
    .local v2, "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 960
    .local v3, "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 961
    .local v4, "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 962
    .local v5, "listBelow":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    const-wide/16 v6, 0x0

    .local v6, "slopePerpendicularAB":D
    const-wide/16 v8, 0x0

    .line 965
    .local v8, "distanceToPoint":D
    const-wide v10, 0x3f747ae147ae147bL    # 0.005

    .line 967
    .local v10, "latitudeNoise":D
    const-wide v12, 0x3f747ae147ae147bL    # 0.005

    .line 971
    .local v12, "longitudeNoise":D
    const/4 v14, 0x0

    .local v14, "temp":Lcom/samsung/android/knox/location/LatLongPoint;
    const/4 v15, 0x0

    .local v15, "end1":Lcom/samsung/android/knox/location/LatLongPoint;
    const/16 v16, 0x0

    .line 976
    .local v16, "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    const-wide v17, 0x3ee2cc82c7677f8dL    # 8.964E-6

    mul-double v17, v17, p2

    .line 978
    .end local p2    # "tolerance":D
    .local v17, "tolerance":D
    const/16 v19, 0x0

    move-wide/from16 p2, v6

    move-object/from16 v6, v16

    move/from16 v7, v19

    .end local v16    # "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v6, "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v7, "i":I
    .local p2, "slopePerpendicularAB":D
    :goto_3c
    move-wide/from16 v19, v8

    .end local v8    # "distanceToPoint":D
    .local v19, "distanceToPoint":D
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2ec

    .line 979
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_5b

    .line 980
    add-int/lit8 v8, v7, -0x1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 981
    .local v8, "a":Lcom/samsung/android/knox/location/LatLongPoint;
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/location/LatLongPoint;

    .local v9, "b":Lcom/samsung/android/knox/location/LatLongPoint;
    goto :goto_69

    .line 983
    .end local v8    # "a":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v9    # "b":Lcom/samsung/android/knox/location/LatLongPoint;
    :cond_5b
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 984
    .restart local v8    # "a":Lcom/samsung/android/knox/location/LatLongPoint;
    add-int/lit8 v9, v7, 0x1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 987
    .restart local v9    # "b":Lcom/samsung/android/knox/location/LatLongPoint;
    :goto_69
    move-object/from16 v16, v14

    move-object/from16 v21, v15

    .end local v14    # "temp":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v15    # "end1":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v16, "temp":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v21, "end1":Lcom/samsung/android/knox/location/LatLongPoint;
    iget-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-object/from16 v22, v1

    .end local v1    # "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .local v22, "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    iget-wide v0, v8, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    sub-double/2addr v14, v0

    const-wide/16 v0, 0x0

    cmpl-double v14, v14, v0

    if-nez v14, :cond_8b

    .line 988
    iget-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpl-double v14, v14, v0

    if-ltz v14, :cond_86

    .line 989
    iget-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    sub-double/2addr v14, v10

    iput-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    goto :goto_8b

    .line 991
    :cond_86
    iget-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    add-double/2addr v14, v10

    iput-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 994
    :cond_8b
    :goto_8b
    iget-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v23, v10

    .end local v10    # "latitudeNoise":D
    .local v23, "latitudeNoise":D
    iget-wide v10, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double/2addr v14, v10

    cmpl-double v10, v14, v0

    if-nez v10, :cond_a7

    .line 995
    iget-wide v10, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v10, v10, v0

    if-ltz v10, :cond_a2

    .line 996
    iget-wide v10, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double/2addr v10, v12

    iput-wide v10, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    goto :goto_a7

    .line 998
    :cond_a2
    iget-wide v10, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 1001
    :cond_a7
    :goto_a7
    iget-wide v10, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v14, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double/2addr v10, v14

    iget-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v0, v8, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    sub-double/2addr v14, v0

    div-double/2addr v10, v14

    .line 1003
    .local v10, "slopeAB":D
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    new-instance v0, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v14, v8, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v27, v12

    .end local v12    # "longitudeNoise":D
    .local v27, "longitudeNoise":D
    iget-wide v12, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    add-double/2addr v14, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v14, v12

    iget-wide v12, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-object/from16 v31, v2

    .end local v2    # "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .local v31, "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    iget-wide v1, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    add-double/2addr v12, v1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v1

    invoke-direct {v0, v14, v15, v12, v13}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 1011
    .local v0, "mid1":Lcom/samsung/android/knox/location/LatLongPoint;
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    div-double v12, v1, v10

    neg-double v12, v12

    .line 1013
    .end local p2    # "slopePerpendicularAB":D
    .local v12, "slopePerpendicularAB":D
    mul-double v14, v12, v12

    add-double/2addr v14, v1

    .line 1014
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    div-double v1, v17, v1

    .line 1017
    .end local v19    # "distanceToPoint":D
    .local v1, "distanceToPoint":D
    const-wide/16 v14, 0x0

    cmpl-double v19, v10, v14

    if-lez v19, :cond_f3

    iget-wide v14, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-object/from16 v29, v6

    move/from16 v30, v7

    .end local v6    # "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v7    # "i":I
    .local v29, "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v30, "i":I
    iget-wide v6, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v6, v14, v6

    if-ltz v6, :cond_105

    goto :goto_f7

    .end local v29    # "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v30    # "i":I
    .restart local v6    # "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    .restart local v7    # "i":I
    :cond_f3
    move-object/from16 v29, v6

    move/from16 v30, v7

    .end local v6    # "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v7    # "i":I
    .restart local v29    # "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    .restart local v30    # "i":I
    :goto_f7
    const-wide/16 v6, 0x0

    cmpg-double v14, v10, v6

    if-gez v14, :cond_1d4

    iget-wide v6, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v6, v6, v14

    if-lez v6, :cond_1d4

    .line 1019
    :cond_105
    iget-wide v6, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double v14, v12, v1

    add-double/2addr v6, v14

    .line 1020
    .local v6, "yNewAbove":D
    iget-wide v14, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v14, v6, v14

    move-wide/from16 v32, v10

    .end local v10    # "slopeAB":D
    .local v32, "slopeAB":D
    iget-wide v10, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v10, v12

    add-double/2addr v14, v10

    div-double/2addr v14, v12

    .line 1022
    .local v14, "xNewAbove":D
    new-instance v10, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v10, v14, v15, v6, v7}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1025
    iget-wide v10, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double v19, v12, v1

    sub-double v10, v10, v19

    .line 1026
    .local v10, "yNewBelow":D
    move-wide/from16 p2, v6

    .end local v6    # "yNewAbove":D
    .local p2, "yNewAbove":D
    iget-wide v6, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v6, v10, v6

    move-wide/from16 v19, v14

    .end local v14    # "xNewAbove":D
    .local v19, "xNewAbove":D
    iget-wide v14, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v14, v12

    add-double/2addr v6, v14

    div-double/2addr v6, v12

    .line 1028
    .local v6, "xNewBelow":D
    new-instance v14, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v14, v6, v7, v10, v11}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1030
    if-nez v30, :cond_13c

    .line 1031
    move-object v14, v8

    .end local v16    # "temp":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v14, "temp":Lcom/samsung/android/knox/location/LatLongPoint;
    goto :goto_13e

    .line 1030
    .end local v14    # "temp":Lcom/samsung/android/knox/location/LatLongPoint;
    .restart local v16    # "temp":Lcom/samsung/android/knox/location/LatLongPoint;
    :cond_13c
    move-object/from16 v14, v16

    .line 1032
    .end local v16    # "temp":Lcom/samsung/android/knox/location/LatLongPoint;
    .restart local v14    # "temp":Lcom/samsung/android/knox/location/LatLongPoint;
    :goto_13e
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    move-wide/from16 v25, v6

    move/from16 v6, v30

    .end local v30    # "i":I
    .local v6, "i":I
    .local v25, "xNewBelow":D
    if-ne v6, v15, :cond_14b

    .line 1033
    move-object v14, v9

    .line 1035
    :cond_14b
    if-eqz v6, :cond_166

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_156

    goto :goto_166

    :cond_156
    move-wide/from16 p2, v1

    move-object/from16 v36, v3

    move-object/from16 v30, v8

    move-object/from16 v25, v9

    move-object/from16 v15, v22

    move-object/from16 v3, v31

    move-object/from16 v22, v0

    goto/16 :goto_2d6

    .line 1036
    :cond_166
    :goto_166
    move-wide/from16 v34, v10

    .end local v10    # "yNewBelow":D
    .local v34, "yNewBelow":D
    iget-wide v10, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double v15, v12, v1

    add-double/2addr v10, v15

    .line 1037
    .end local p2    # "yNewAbove":D
    .local v10, "yNewAbove":D
    move-object v7, v3

    move-object v15, v4

    .end local v3    # "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v4    # "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .local v7, "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local v15, "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    iget-wide v3, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v3, v10, v3

    move-object/from16 v36, v7

    move-object/from16 v30, v8

    .end local v7    # "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v8    # "a":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v30, "a":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v36, "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    iget-wide v7, v14, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v7, v12

    add-double/2addr v3, v7

    div-double/2addr v3, v12

    .line 1039
    .end local v19    # "xNewAbove":D
    .local v3, "xNewAbove":D
    if-nez v6, :cond_189

    .line 1040
    new-instance v7, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v7, v3, v4, v10, v11}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v8, v22

    .end local v22    # "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .local v8, "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_192

    .line 1042
    .end local v8    # "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .restart local v22    # "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    :cond_189
    move-object/from16 v8, v22

    .end local v22    # "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .restart local v8    # "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    new-instance v7, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v7, v3, v4, v10, v11}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v21, v7

    .line 1045
    :goto_192
    move-wide/from16 p2, v3

    .end local v3    # "xNewAbove":D
    .local p2, "xNewAbove":D
    iget-wide v3, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double v19, v12, v1

    sub-double v3, v3, v19

    .line 1046
    .end local v34    # "yNewBelow":D
    .local v3, "yNewBelow":D
    move-wide/from16 v19, v10

    .end local v10    # "yNewAbove":D
    .local v19, "yNewAbove":D
    iget-wide v10, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v10, v3, v10

    move-object/from16 v22, v8

    .end local v8    # "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .restart local v22    # "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    iget-wide v7, v14, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v7, v12

    add-double/2addr v10, v7

    div-double/2addr v10, v12

    .line 1048
    .end local v25    # "xNewBelow":D
    .local v10, "xNewBelow":D
    if-nez v6, :cond_1bf

    .line 1049
    new-instance v7, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v7, v10, v11, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v8, v31

    .end local v31    # "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .local v8, "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 p2, v1

    move-object v3, v8

    move-object/from16 v25, v9

    move-object v4, v15

    move-object/from16 v15, v22

    move-object/from16 v22, v0

    goto/16 :goto_2d6

    .line 1051
    .end local v8    # "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .restart local v31    # "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    :cond_1bf
    move-object/from16 v8, v31

    .end local v31    # "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .restart local v8    # "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    new-instance v7, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v7, v10, v11, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-wide/from16 p2, v1

    move-object/from16 v29, v7

    move-object v3, v8

    move-object/from16 v25, v9

    move-object v4, v15

    move-object/from16 v15, v22

    move-object/from16 v22, v0

    .end local v29    # "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v7, "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    goto/16 :goto_2d6

    .line 1017
    .end local v6    # "i":I
    .end local v7    # "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v14    # "temp":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v15    # "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .end local v19    # "yNewAbove":D
    .end local v32    # "slopeAB":D
    .end local v36    # "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local p2    # "xNewAbove":D
    .local v3, "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v4    # "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .local v8, "a":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v10, "slopeAB":D
    .restart local v16    # "temp":Lcom/samsung/android/knox/location/LatLongPoint;
    .restart local v29    # "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v30, "i":I
    .restart local v31    # "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    :cond_1d4
    move-object/from16 v36, v3

    move-object v15, v4

    move-wide/from16 v32, v10

    move/from16 v6, v30

    move-object/from16 v30, v8

    move-object/from16 v8, v31

    .line 1058
    .end local v3    # "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v4    # "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .end local v10    # "slopeAB":D
    .end local v31    # "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .restart local v6    # "i":I
    .local v8, "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .restart local v15    # "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .local v30, "a":Lcom/samsung/android/knox/location/LatLongPoint;
    .restart local v32    # "slopeAB":D
    .restart local v36    # "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const-wide/16 v3, 0x0

    cmpl-double v7, v32, v3

    if-lez v7, :cond_1f2

    move-object/from16 v3, v30

    .end local v30    # "a":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v3, "a":Lcom/samsung/android/knox/location/LatLongPoint;
    iget-wide v10, v3, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-object/from16 p2, v15

    .end local v15    # "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .local p2, "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    iget-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v4, v10, v14

    if-gtz v4, :cond_204

    goto :goto_1f6

    .end local v3    # "a":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local p2    # "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .restart local v15    # "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .restart local v30    # "a":Lcom/samsung/android/knox/location/LatLongPoint;
    :cond_1f2
    move-object/from16 p2, v15

    move-object/from16 v3, v30

    .end local v15    # "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .end local v30    # "a":Lcom/samsung/android/knox/location/LatLongPoint;
    .restart local v3    # "a":Lcom/samsung/android/knox/location/LatLongPoint;
    .restart local p2    # "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    :goto_1f6
    const-wide/16 v10, 0x0

    cmpg-double v4, v32, v10

    if-gez v4, :cond_2c7

    iget-wide v10, v3, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v4, v10, v14

    if-gez v4, :cond_2c7

    .line 1060
    :cond_204
    iget-wide v10, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double v14, v12, v1

    sub-double/2addr v10, v14

    .line 1061
    .local v10, "yNewAbove":D
    iget-wide v14, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v14, v10, v14

    move-object/from16 v31, v8

    .end local v8    # "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .restart local v31    # "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    iget-wide v7, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v7, v12

    add-double/2addr v14, v7

    div-double/2addr v14, v12

    .line 1063
    .local v14, "xNewAbove":D
    new-instance v4, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v4, v14, v15, v10, v11}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v7, p2

    .end local p2    # "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .local v7, "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    move-wide/from16 p2, v10

    .end local v10    # "yNewAbove":D
    .local p2, "yNewAbove":D
    iget-wide v10, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double v19, v12, v1

    add-double v10, v10, v19

    .line 1067
    .local v10, "yNewBelow":D
    move-wide/from16 v19, v14

    .end local v14    # "xNewAbove":D
    .local v19, "xNewAbove":D
    iget-wide v14, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v14, v10, v14

    move-object v4, v7

    .end local v7    # "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .restart local v4    # "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    iget-wide v7, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v7, v12

    add-double/2addr v14, v7

    div-double/2addr v14, v12

    .line 1069
    .local v14, "xNewBelow":D
    new-instance v7, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v7, v14, v15, v10, v11}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1071
    if-nez v6, :cond_23f

    .line 1072
    move-object v7, v3

    move-object/from16 v16, v7

    .line 1073
    :cond_23f
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_24c

    .line 1074
    move-object/from16 v16, v9

    move-object/from16 v7, v16

    goto :goto_24e

    .line 1073
    :cond_24c
    move-object/from16 v7, v16

    .line 1076
    .end local v16    # "temp":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v7, "temp":Lcom/samsung/android/knox/location/LatLongPoint;
    :goto_24e
    if-eqz v6, :cond_268

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v6, v8, :cond_259

    goto :goto_268

    :cond_259
    move-wide/from16 p2, v1

    move-object/from16 v30, v3

    move-object v14, v7

    move-object/from16 v25, v9

    move-object/from16 v15, v22

    move-object/from16 v3, v31

    move-object/from16 v22, v0

    goto/16 :goto_2d6

    .line 1077
    :cond_268
    :goto_268
    move-object/from16 v25, v9

    .end local v9    # "b":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v25, "b":Lcom/samsung/android/knox/location/LatLongPoint;
    iget-wide v8, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double v34, v12, v1

    sub-double v8, v8, v34

    .line 1078
    .end local p2    # "yNewAbove":D
    .local v8, "yNewAbove":D
    move-wide/from16 p2, v10

    .end local v10    # "yNewBelow":D
    .local p2, "yNewBelow":D
    iget-wide v10, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v10, v8, v10

    move-wide/from16 v34, v14

    .end local v14    # "xNewBelow":D
    .local v34, "xNewBelow":D
    iget-wide v14, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v14, v12

    add-double/2addr v10, v14

    div-double/2addr v10, v12

    .line 1080
    .end local v19    # "xNewAbove":D
    .local v10, "xNewAbove":D
    if-nez v6, :cond_28c

    .line 1081
    new-instance v14, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v14, v10, v11, v8, v9}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v15, v22

    .end local v22    # "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .local v15, "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v14, v21

    goto :goto_293

    .line 1083
    .end local v15    # "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .restart local v22    # "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    :cond_28c
    move-object/from16 v15, v22

    .end local v22    # "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .restart local v15    # "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    new-instance v14, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v14, v10, v11, v8, v9}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 1086
    .end local v21    # "end1":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v14, "end1":Lcom/samsung/android/knox/location/LatLongPoint;
    :goto_293
    move-wide/from16 v19, v8

    .end local v8    # "yNewAbove":D
    .local v19, "yNewAbove":D
    iget-wide v8, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double v21, v12, v1

    add-double v8, v8, v21

    .line 1087
    .end local p2    # "yNewBelow":D
    .local v8, "yNewBelow":D
    move-object/from16 v22, v0

    move-wide/from16 p2, v1

    .end local v0    # "mid1":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v1    # "distanceToPoint":D
    .local v22, "mid1":Lcom/samsung/android/knox/location/LatLongPoint;
    .local p2, "distanceToPoint":D
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v0, v8, v0

    move-object/from16 v30, v3

    .end local v3    # "a":Lcom/samsung/android/knox/location/LatLongPoint;
    .restart local v30    # "a":Lcom/samsung/android/knox/location/LatLongPoint;
    iget-wide v2, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v2, v12

    add-double/2addr v0, v2

    div-double/2addr v0, v12

    .line 1089
    .end local v34    # "xNewBelow":D
    .local v0, "xNewBelow":D
    if-nez v6, :cond_2ba

    .line 1090
    new-instance v2, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v2, v0, v1, v8, v9}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v3, v31

    .end local v31    # "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .local v3, "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, v14

    move-object v14, v7

    goto :goto_2d6

    .line 1092
    .end local v3    # "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .restart local v31    # "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    :cond_2ba
    move-object/from16 v3, v31

    .end local v31    # "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .restart local v3    # "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    new-instance v2, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v2, v0, v1, v8, v9}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v29, v2

    move-object/from16 v21, v14

    move-object v14, v7

    .end local v29    # "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v2, "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    goto :goto_2d6

    .line 1058
    .end local v2    # "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v4    # "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .end local v7    # "temp":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v10    # "xNewAbove":D
    .end local v14    # "end1":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v15    # "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .end local v19    # "yNewAbove":D
    .end local v25    # "b":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v30    # "a":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v0, "mid1":Lcom/samsung/android/knox/location/LatLongPoint;
    .restart local v1    # "distanceToPoint":D
    .local v3, "a":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v8, "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .restart local v9    # "b":Lcom/samsung/android/knox/location/LatLongPoint;
    .restart local v16    # "temp":Lcom/samsung/android/knox/location/LatLongPoint;
    .restart local v21    # "end1":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v22, "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .restart local v29    # "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    .local p2, "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    :cond_2c7
    move-object/from16 v4, p2

    move-wide/from16 p2, v1

    move-object/from16 v30, v3

    move-object v3, v8

    move-object/from16 v25, v9

    move-object/from16 v15, v22

    move-object/from16 v22, v0

    .line 978
    .end local v0    # "mid1":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v1    # "distanceToPoint":D
    .end local v8    # "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .end local v9    # "b":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v3, "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .restart local v4    # "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .restart local v15    # "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .local v22, "mid1":Lcom/samsung/android/knox/location/LatLongPoint;
    .restart local v25    # "b":Lcom/samsung/android/knox/location/LatLongPoint;
    .restart local v30    # "a":Lcom/samsung/android/knox/location/LatLongPoint;
    .local p2, "distanceToPoint":D
    move-object/from16 v14, v16

    .end local v16    # "temp":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v14, "temp":Lcom/samsung/android/knox/location/LatLongPoint;
    :goto_2d6
    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v8, p2

    move-object v2, v3

    move-wide/from16 p2, v12

    move-object v1, v15

    move-object/from16 v15, v21

    move-wide/from16 v10, v23

    move-wide/from16 v12, v27

    move-object/from16 v6, v29

    move-object/from16 v3, v36

    .end local v6    # "i":I
    .local v7, "i":I
    goto/16 :goto_3c

    .end local v21    # "end1":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v22    # "mid1":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v23    # "latitudeNoise":D
    .end local v25    # "b":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v27    # "longitudeNoise":D
    .end local v29    # "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v30    # "a":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v32    # "slopeAB":D
    .end local v36    # "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local v1, "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .local v2, "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .local v3, "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local v6, "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v10, "latitudeNoise":D
    .local v12, "longitudeNoise":D
    .local v15, "end1":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v19, "distanceToPoint":D
    .local p2, "slopePerpendicularAB":D
    :cond_2ec
    move-object/from16 v36, v3

    move-object/from16 v29, v6

    move v6, v7

    move-wide/from16 v23, v10

    move-wide/from16 v27, v12

    move-object/from16 v16, v14

    move-object/from16 v21, v15

    move-object v15, v1

    move-object v3, v2

    .line 1103
    .end local v1    # "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .end local v2    # "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .end local v6    # "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v7    # "i":I
    .end local v10    # "latitudeNoise":D
    .end local v12    # "longitudeNoise":D
    .end local v14    # "temp":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v3, "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .local v15, "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .restart local v16    # "temp":Lcom/samsung/android/knox/location/LatLongPoint;
    .restart local v21    # "end1":Lcom/samsung/android/knox/location/LatLongPoint;
    .restart local v23    # "latitudeNoise":D
    .restart local v27    # "longitudeNoise":D
    .restart local v29    # "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    .restart local v36    # "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const/4 v0, 0x0

    .line 1104
    .local v0, "z":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2fd
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ge v1, v2, :cond_39b

    .line 1107
    move-object/from16 v2, v36

    .end local v36    # "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local v2, "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 1108
    .local v6, "m1":D
    add-int/lit8 v8, v1, 0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 1109
    .local v8, "m2":D
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1110
    .local v10, "p1":Lcom/samsung/android/knox/location/LatLongPoint;
    add-int/lit8 v11, v0, 0x1

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1111
    .local v11, "p2":Lcom/samsung/android/knox/location/LatLongPoint;
    iget-wide v12, v11, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move v14, v1

    .end local v1    # "i":I
    .end local v2    # "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local v14, "i":I
    .restart local v36    # "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    iget-wide v1, v11, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v1, v8

    sub-double/2addr v12, v1

    iget-wide v1, v10, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-object/from16 v31, v3

    move-object/from16 v22, v4

    .end local v3    # "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .end local v4    # "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .local v22, "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .restart local v31    # "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    iget-wide v3, v10, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v3, v6

    sub-double/2addr v1, v3

    sub-double/2addr v12, v1

    sub-double v1, v6, v8

    div-double/2addr v12, v1

    .line 1113
    .local v12, "finx":D
    mul-double v1, v6, v12

    iget-wide v3, v10, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v25, v8

    .end local v8    # "m2":D
    .local v25, "m2":D
    iget-wide v8, v10, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v8, v6

    sub-double/2addr v3, v8

    add-double/2addr v1, v3

    .line 1114
    .local v1, "finy":D
    new-instance v3, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v3, v12, v13, v1, v2}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1116
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1117
    .local v3, "p3":Lcom/samsung/android/knox/location/LatLongPoint;
    add-int/lit8 v4, v0, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1118
    .local v4, "p4":Lcom/samsung/android/knox/location/LatLongPoint;
    iget-wide v8, v3, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v32, v1

    .end local v1    # "finy":D
    .local v32, "finy":D
    iget-wide v1, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double v1, v1, v25

    sub-double/2addr v8, v1

    iget-wide v1, v3, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-object/from16 v34, v4

    move-object/from16 v30, v5

    .end local v4    # "p4":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v5    # "listBelow":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .local v30, "listBelow":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .local v34, "p4":Lcom/samsung/android/knox/location/LatLongPoint;
    iget-wide v4, v3, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v4, v6

    sub-double/2addr v1, v4

    sub-double/2addr v8, v1

    sub-double v1, v6, v25

    div-double/2addr v8, v1

    .line 1120
    .local v8, "finxbelow":D
    mul-double v1, v6, v8

    iget-wide v4, v3, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-object/from16 v35, v10

    move-object/from16 v37, v11

    .end local v10    # "p1":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v11    # "p2":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v35, "p1":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v37, "p2":Lcom/samsung/android/knox/location/LatLongPoint;
    iget-wide v10, v3, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v10, v6

    sub-double/2addr v4, v10

    add-double/2addr v1, v4

    .line 1121
    .local v1, "finybelow":D
    new-instance v4, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v4, v8, v9, v1, v2}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v5, v31

    .end local v31    # "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .local v5, "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1122
    nop

    .end local v1    # "finybelow":D
    .end local v3    # "p3":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v6    # "m1":D
    .end local v8    # "finxbelow":D
    .end local v12    # "finx":D
    .end local v25    # "m2":D
    .end local v32    # "finy":D
    .end local v34    # "p4":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v35    # "p1":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v37    # "p2":Lcom/samsung/android/knox/location/LatLongPoint;
    add-int/lit8 v0, v0, 0x1

    .line 1104
    add-int/lit8 v1, v14, 0x1

    move-object v3, v5

    move-object/from16 v4, v22

    move-object/from16 v5, v30

    .end local v14    # "i":I
    .local v1, "i":I
    goto/16 :goto_2fd

    .end local v22    # "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .end local v30    # "listBelow":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .local v3, "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .local v4, "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .local v5, "listBelow":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    :cond_39b
    move v14, v1

    move-object/from16 v22, v4

    move-object/from16 v30, v5

    move-object v5, v3

    .line 1126
    .end local v1    # "i":I
    .end local v3    # "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .end local v4    # "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .local v5, "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .restart local v22    # "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .restart local v30    # "listBelow":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    move-object/from16 v1, v21

    .end local v21    # "end1":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v1, "end1":Lcom/samsung/android/knox/location/LatLongPoint;
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1127
    move-object/from16 v2, v29

    .end local v29    # "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v2, "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1128
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_3b1
    if-ltz v3, :cond_3bf

    .line 1129
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1128
    add-int/lit8 v3, v3, -0x1

    goto :goto_3b1

    .line 1131
    .end local v3    # "i":I
    :cond_3bf
    return-object v15
.end method

.method public declared-synchronized destroyGeofence(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "id"    # I

    monitor-enter p0

    .line 470
    :try_start_1
    const-string v0, "GeofenceService"

    const-string v1, "destroyGeofence"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    move-object p1, v0

    .line 472
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 473
    .local v0, "callingUid":I
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteFromDB(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v1

    .line 474
    .local v1, "ret":Z
    if-eqz v1, :cond_38

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    move-result v2

    if-nez v2, :cond_38

    .line 475
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "GEOFENCINGSETTINGS"

    const-string/jumbo v4, "state"

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 477
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 478
    .local v2, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 479
    nop

    .end local v2    # "message":Landroid/os/Message;
    goto :goto_4e

    .end local p0    # "this":Lcom/android/server/enterprise/geofencing/GeofenceService;
    :cond_38
    if-eqz v1, :cond_4e

    .line 480
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 481
    .restart local v2    # "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_50

    .line 483
    .end local v2    # "message":Landroid/os/Message;
    :cond_4e
    :goto_4e
    monitor-exit p0

    return v1

    .line 469
    .end local v0    # "callingUid":I
    .end local v1    # "ret":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "id":I
    :catchall_50
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public findDistance(Lcom/samsung/android/knox/location/LatLongPoint;Lcom/samsung/android/knox/location/LatLongPoint;)D
    .registers 21
    .param p1, "point1"    # Lcom/samsung/android/knox/location/LatLongPoint;
    .param p2, "point2"    # Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1532
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-wide v2, 0x40aeed880a82edb3L    # 3958.765705195919

    .line 1534
    .local v2, "R":D
    iget-wide v4, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 1535
    .local v4, "lat2":D
    iget-wide v6, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 1536
    .local v6, "lon2":D
    iget-wide v8, v1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 1537
    .local v8, "lat1":D
    iget-wide v10, v1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 1539
    .local v10, "lon1":D
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    sub-double v16, v6, v10

    .line 1540
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    .line 1539
    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    mul-double/2addr v12, v2

    .line 1543
    .local v12, "distance":D
    return-wide v12
.end method

.method public getGeofences(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 15
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/Geofence;",
            ">;"
        }
    .end annotation

    .line 631
    const-string v0, "blobdata"

    const-string/jumbo v1, "type"

    const-string v2, "_id"

    const-string v3, "GeofenceService"

    const-string/jumbo v4, "getGeofences"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 633
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 634
    .local v4, "callingUid":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/Geofence;>;"
    const/4 v6, 0x0

    .line 638
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_1b
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v7

    .line 643
    .local v7, "columns":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "GEOFENCING"

    invoke-virtual {v8, v9, v4, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v6, v8

    .line 646
    if-eqz v6, :cond_81

    .line 647
    :goto_2a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_81

    .line 649
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 650
    .local v8, "id":I
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 651
    .local v9, "type":I
    nop

    .line 652
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 651
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 654
    .local v10, "data":[B
    const/4 v11, 0x2

    if-ne v9, v11, :cond_5b

    .line 655
    invoke-static {v10}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/knox/location/PolygonalGeofence;

    .line 656
    .local v11, "pFence":Lcom/samsung/android/knox/location/PolygonalGeofence;
    iput v8, v11, Lcom/samsung/android/knox/location/PolygonalGeofence;->id:I

    .line 657
    iput v9, v11, Lcom/samsung/android/knox/location/PolygonalGeofence;->type:I

    .line 658
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    nop

    .end local v11    # "pFence":Lcom/samsung/android/knox/location/PolygonalGeofence;
    goto :goto_80

    :cond_5b
    const/4 v11, 0x3

    if-ne v9, v11, :cond_73

    .line 660
    invoke-static {v10}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/knox/location/LinearGeofence;

    .line 661
    .local v11, "lFence":Lcom/samsung/android/knox/location/LinearGeofence;
    iput v8, v11, Lcom/samsung/android/knox/location/LinearGeofence;->id:I

    .line 662
    iput v9, v11, Lcom/samsung/android/knox/location/LinearGeofence;->type:I

    .line 663
    invoke-direct {p0, v11}, Lcom/android/server/enterprise/geofencing/GeofenceService;->convertToLinear(Lcom/samsung/android/knox/location/LinearGeofence;)Ljava/util/List;

    move-result-object v12

    iput-object v12, v11, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    .line 664
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    nop

    .end local v11    # "lFence":Lcom/samsung/android/knox/location/LinearGeofence;
    goto :goto_80

    .line 666
    :cond_73
    invoke-static {v10}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/knox/location/CircularGeofence;

    .line 667
    .local v11, "cFence":Lcom/samsung/android/knox/location/CircularGeofence;
    iput v8, v11, Lcom/samsung/android/knox/location/CircularGeofence;->id:I

    .line 668
    iput v9, v11, Lcom/samsung/android/knox/location/CircularGeofence;->type:I

    .line 669
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_80
    .catch Landroid/database/SQLException; {:try_start_1b .. :try_end_80} :catch_97
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_80} :catch_8a
    .catchall {:try_start_1b .. :try_end_80} :catchall_c0

    .line 671
    .end local v8    # "id":I
    .end local v9    # "type":I
    .end local v10    # "data":[B
    .end local v11    # "cFence":Lcom/samsung/android/knox/location/CircularGeofence;
    :goto_80
    goto :goto_2a

    .line 679
    .end local v7    # "columns":[Ljava/lang/String;
    :cond_81
    if-eqz v6, :cond_89

    .line 680
    :try_start_83
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_89

    .line 681
    :catch_87
    move-exception v0

    .line 682
    goto :goto_b6

    .line 681
    :cond_89
    :goto_89
    goto :goto_b6

    .line 675
    :catch_8a
    move-exception v0

    .line 676
    .local v0, "e":Ljava/lang/Exception;
    :try_start_8b
    const-string/jumbo v1, "getGeofences - EX"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_91
    .catchall {:try_start_8b .. :try_end_91} :catchall_c0

    .line 679
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v6, :cond_89

    .line 680
    :try_start_93
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_87

    goto :goto_89

    .line 673
    :catch_97
    move-exception v0

    .line 674
    .local v0, "sqlEx":Landroid/database/SQLException;
    :try_start_98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred accessing Enterprise db "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_98 .. :try_end_b0} :catchall_c0

    .line 679
    .end local v0    # "sqlEx":Landroid/database/SQLException;
    if-eqz v6, :cond_89

    .line 680
    :try_start_b2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_87

    goto :goto_89

    .line 684
    :goto_b6
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_be

    const/4 v0, 0x0

    goto :goto_bf

    :cond_be
    move-object v0, v5

    :goto_bf
    return-object v0

    .line 678
    :catchall_c0
    move-exception v0

    .line 679
    if-eqz v6, :cond_c8

    .line 680
    :try_start_c3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c6} :catch_c7

    goto :goto_c8

    .line 681
    :catch_c7
    move-exception v1

    :cond_c8
    :goto_c8
    nop

    .line 682
    throw v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    return-object v0
.end method

.method public getMinDistanceParameter(Lcom/samsung/android/knox/ContextInfo;)F
    .registers 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 787
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 789
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 790
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 791
    const-string v2, "GEOFENCINGSETTINGS"

    const-string v3, "distance"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 790
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToFloat(Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method public getMinTimeParameter(Lcom/samsung/android/knox/ContextInfo;)J
    .registers 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 719
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 721
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 722
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "GEOFENCINGSETTINGS"

    const-string/jumbo v3, "time"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public isDeviceInsideGeofence(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 580
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 581
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isDeviceInsideGeofence(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 562
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 565
    const/4 v0, 0x0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "GEOFENCINGSETTINGS"

    const-string/jumbo v4, "state"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_12
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_5 .. :try_end_12} :catch_19

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    .line 567
    move v0, v2

    goto :goto_18

    :cond_17
    nop

    .line 565
    :goto_18
    return v0

    .line 568
    :catch_19
    move-exception v1

    .line 569
    .local v1, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    return v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .line 2014
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 269
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 285
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 277
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    .line 278
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 279
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 280
    return-void
.end method

.method public setMinDistanceParameter(Lcom/samsung/android/knox/ContextInfo;F)Z
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "distance"    # F

    .line 763
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 764
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 765
    .local v0, "callingUid":I
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_d

    .line 766
    const/4 v1, 0x0

    return v1

    .line 768
    :cond_d
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 770
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    .line 768
    const-string v3, "GEOFENCINGSETTINGS"

    const-string v4, "distance"

    invoke-virtual {v1, v0, v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 772
    .local v1, "ret":Z
    if-eqz v1, :cond_2d

    .line 773
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 774
    .local v2, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 777
    .end local v2    # "message":Landroid/os/Message;
    :cond_2d
    return v1
.end method

.method public setMinTimeParameter(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "time"    # J

    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 695
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 697
    .local v0, "callingUid":I
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gez v1, :cond_e

    .line 698
    const/4 v1, 0x0

    return v1

    .line 700
    :cond_e
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 702
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 700
    const-string v3, "GEOFENCINGSETTINGS"

    const-string/jumbo v4, "time"

    invoke-virtual {v1, v0, v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 704
    .local v1, "ret":Z
    if-eqz v1, :cond_2f

    .line 705
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 706
    .local v2, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 709
    .end local v2    # "message":Landroid/os/Message;
    :cond_2f
    return v1
.end method

.method public startGeofencing(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 493
    const-string v0, "GeofenceService"

    const-string/jumbo v1, "startGeofencing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 495
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 497
    .local v0, "callingUid":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    move-result v1

    if-nez v1, :cond_16

    .line 498
    const/4 v1, 0x0

    return v1

    .line 501
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    .line 503
    .local v1, "geofencingEnabled":Z
    monitor-enter p0

    .line 504
    const/4 v2, 0x1

    if-eqz v1, :cond_24

    :try_start_1e
    sget-object v3, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    if-eqz v3, :cond_24

    .line 505
    monitor-exit p0

    return v2

    .line 507
    :cond_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_46

    .line 509
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCINGSETTINGS"

    const-string/jumbo v5, "state"

    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 513
    .local v2, "ret":Z
    if-eqz v2, :cond_45

    .line 514
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V

    .line 515
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 516
    .local v3, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 519
    .end local v3    # "message":Landroid/os/Message;
    :cond_45
    return v2

    .line 507
    .end local v2    # "ret":Z
    :catchall_46
    move-exception v2

    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v2
.end method

.method public stopGeofencing(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 530
    const-string v0, "GeofenceService"

    const-string/jumbo v1, "stopGeofencing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 532
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 534
    .local v0, "callingUid":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    .line 535
    return v2

    .line 538
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 539
    const/4 v1, 0x1

    return v1

    .line 542
    :cond_1e
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "GEOFENCINGSETTINGS"

    const-string/jumbo v4, "state"

    invoke-virtual {v1, v0, v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 546
    .local v1, "ret":Z
    if-eqz v1, :cond_3e

    .line 547
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    .line 548
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 549
    .local v2, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 552
    .end local v2    # "message":Landroid/os/Message;
    :cond_3e
    return v1
.end method

.method public systemReady()V
    .registers 7

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "count":I
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 256
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 260
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 261
    .local v2, "message":Landroid/os/Message;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 262
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 264
    return-void
.end method
