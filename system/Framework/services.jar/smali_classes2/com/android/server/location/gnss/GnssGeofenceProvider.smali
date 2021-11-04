.class Lcom/android/server/location/gnss/GnssGeofenceProvider;
.super Landroid/location/IGpsGeofenceHardware$Stub;
.source "GnssGeofenceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;,
        Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GnssGeofenceProvider"


# instance fields
.field private final SLOCATION_ID_FOR_AVOIDENCE:I

.field private final mGeofenceEntries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mNative:Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    const-string v0, "GnssGeofenceProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 54
    new-instance v0, Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssGeofenceProvider;-><init>(Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;)V

    .line 55
    return-void
.end method

.method constructor <init>(Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;)V
    .registers 3
    .param p1, "gnssGeofenceProviderNative"    # Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;

    .line 58
    invoke-direct {p0}, Landroid/location/IGpsGeofenceHardware$Stub;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    .line 89
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->SLOCATION_ID_FOR_AVOIDENCE:I

    .line 59
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mNative:Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;

    .line 60
    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 29
    invoke-static {}, Lcom/android/server/location/gnss/GnssGeofenceProvider;->native_is_geofence_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(IDDDIIII)Z
    .registers 12
    .param p0, "x0"    # I
    .param p1, "x1"    # D
    .param p3, "x2"    # D
    .param p5, "x3"    # D
    .param p7, "x4"    # I
    .param p8, "x5"    # I
    .param p9, "x6"    # I
    .param p10, "x7"    # I

    .line 29
    invoke-static/range {p0 .. p10}, Lcom/android/server/location/gnss/GnssGeofenceProvider;->native_add_geofence(IDDDIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 29
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssGeofenceProvider;->native_remove_geofence(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(II)Z
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 29
    invoke-static {p0, p1}, Lcom/android/server/location/gnss/GnssGeofenceProvider;->native_resume_geofence(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 29
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssGeofenceProvider;->native_pause_geofence(I)Z

    move-result v0

    return v0
.end method

.method private static native native_add_geofence(IDDDIIII)Z
.end method

.method private static native native_is_geofence_supported()Z
.end method

.method private static native native_pause_geofence(I)Z
.end method

.method private static native native_remove_geofence(I)Z
.end method

.method private static native native_resume_geofence(II)Z
.end method


# virtual methods
.method public addCircularHardwareGeofence(IDDDIIII)Z
    .registers 28
    .param p1, "geofenceId"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "radius"    # D
    .param p8, "lastTransition"    # I
    .param p9, "monitorTransitions"    # I
    .param p10, "notificationResponsiveness"    # I
    .param p11, "unknownTimer"    # I

    .line 95
    move-object/from16 v1, p0

    move/from16 v14, p1

    iget-object v15, v1, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 96
    :try_start_7
    iget-object v2, v1, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mNative:Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;->addGeofence(IDDDIIII)Z

    move-result v0

    .line 100
    .local v0, "added":Z
    const/16 v2, 0x2710

    if-le v14, v2, :cond_23

    .line 101
    monitor-exit v15

    return v0

    .line 104
    :cond_23
    if-eqz v0, :cond_5b

    .line 105
    new-instance v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;-><init>(Lcom/android/server/location/gnss/GnssGeofenceProvider$1;)V

    .line 106
    .local v2, "entry":Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;
    iput v14, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->geofenceId:I
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_6b

    .line 107
    move-wide/from16 v3, p2

    :try_start_2f
    iput-wide v3, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->latitude:D
    :try_end_31
    .catchall {:try_start_2f .. :try_end_31} :catchall_59

    .line 108
    move-wide/from16 v5, p4

    :try_start_33
    iput-wide v5, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->longitude:D
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_57

    .line 109
    move-wide/from16 v7, p6

    :try_start_37
    iput-wide v7, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->radius:D
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_55

    .line 110
    move/from16 v9, p8

    :try_start_3b
    iput v9, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->lastTransition:I
    :try_end_3d
    .catchall {:try_start_3b .. :try_end_3d} :catchall_53

    .line 111
    move/from16 v10, p9

    :try_start_3f
    iput v10, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->monitorTransitions:I
    :try_end_41
    .catchall {:try_start_3f .. :try_end_41} :catchall_51

    .line 112
    move/from16 v11, p10

    :try_start_43
    iput v11, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->notificationResponsiveness:I
    :try_end_45
    .catchall {:try_start_43 .. :try_end_45} :catchall_4f

    .line 113
    move/from16 v12, p11

    :try_start_47
    iput v12, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->unknownTimer:I

    .line 114
    iget-object v13, v1, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v13, v14, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_69

    .line 117
    .end local v0    # "added":Z
    .end local v2    # "entry":Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;
    :catchall_4f
    move-exception v0

    goto :goto_78

    :catchall_51
    move-exception v0

    goto :goto_76

    :catchall_53
    move-exception v0

    goto :goto_74

    :catchall_55
    move-exception v0

    goto :goto_72

    :catchall_57
    move-exception v0

    goto :goto_70

    :catchall_59
    move-exception v0

    goto :goto_6e

    .line 104
    .restart local v0    # "added":Z
    :cond_5b
    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    .line 116
    :goto_69
    monitor-exit v15

    return v0

    .line 117
    .end local v0    # "added":Z
    :catchall_6b
    move-exception v0

    move-wide/from16 v3, p2

    :goto_6e
    move-wide/from16 v5, p4

    :goto_70
    move-wide/from16 v7, p6

    :goto_72
    move/from16 v9, p8

    :goto_74
    move/from16 v10, p9

    :goto_76
    move/from16 v11, p10

    :goto_78
    move/from16 v12, p11

    :goto_7a
    monitor-exit v15
    :try_end_7b
    .catchall {:try_start_47 .. :try_end_7b} :catchall_7c

    throw v0

    :catchall_7c
    move-exception v0

    goto :goto_7a
.end method

.method public isHardwareGeofenceSupported()Z
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mNative:Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;->isGeofenceSupported()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 85
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public pauseHardwareGeofence(I)Z
    .registers 6
    .param p1, "geofenceId"    # I

    .line 138
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mNative:Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-virtual {v1, p1}, Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;->pauseGeofence(I)Z

    move-result v1

    .line 140
    .local v1, "paused":Z
    if-eqz v1, :cond_18

    .line 141
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;

    .line 142
    .local v2, "entry":Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;
    if-eqz v2, :cond_18

    .line 143
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->paused:Z

    .line 146
    .end local v2    # "entry":Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;
    :cond_18
    monitor-exit v0

    return v1

    .line 147
    .end local v1    # "paused":Z
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public removeHardwareGeofence(I)Z
    .registers 5
    .param p1, "geofenceId"    # I

    .line 122
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mNative:Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-virtual {v1, p1}, Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;->removeGeofence(I)Z

    move-result v1

    .line 125
    .local v1, "removed":Z
    const/16 v2, 0x2710

    if-le p1, v2, :cond_f

    .line 126
    monitor-exit v0

    return v1

    .line 129
    :cond_f
    if-eqz v1, :cond_16

    .line 130
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 132
    :cond_16
    monitor-exit v0

    return v1

    .line 133
    .end local v1    # "removed":Z
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public resumeHardwareGeofence(II)Z
    .registers 7
    .param p1, "geofenceId"    # I
    .param p2, "monitorTransitions"    # I

    .line 152
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mNative:Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;->resumeGeofence(II)Z

    move-result v1

    .line 154
    .local v1, "resumed":Z
    if-eqz v1, :cond_1a

    .line 155
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;

    .line 156
    .local v2, "entry":Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;
    if-eqz v2, :cond_1a

    .line 157
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->paused:Z

    .line 158
    iput p2, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->monitorTransitions:I

    .line 161
    .end local v2    # "entry":Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;
    :cond_1a
    monitor-exit v0

    return v1

    .line 162
    .end local v1    # "resumed":Z
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method resumeIfStarted()V
    .registers 16

    .line 63
    sget-boolean v0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 64
    const-string v0, "GnssGeofenceProvider"

    const-string/jumbo v1, "resumeIfStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    :try_start_10
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 68
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;

    .line 69
    .local v2, "entry":Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mNative:Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;

    iget v4, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->geofenceId:I

    iget-wide v5, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->latitude:D

    iget-wide v7, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->longitude:D

    iget-wide v9, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->radius:D

    iget v11, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->lastTransition:I

    iget v12, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->monitorTransitions:I

    iget v13, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->notificationResponsiveness:I

    iget v14, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->unknownTimer:I

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;->addGeofence(IDDDIIII)Z

    move-result v3

    .line 74
    .local v3, "added":Z
    if-eqz v3, :cond_43

    iget-boolean v4, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->paused:Z

    if-eqz v4, :cond_43

    .line 75
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssGeofenceProvider;->mNative:Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;

    iget v5, v2, Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;->geofenceId:I

    invoke-virtual {v4, v5}, Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;->pauseGeofence(I)Z

    .line 67
    .end local v2    # "entry":Lcom/android/server/location/gnss/GnssGeofenceProvider$GeofenceEntry;
    .end local v3    # "added":Z
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 78
    .end local v1    # "i":I
    :cond_46
    monitor-exit v0

    .line 79
    return-void

    .line 78
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_10 .. :try_end_4a} :catchall_48

    throw v1
.end method
