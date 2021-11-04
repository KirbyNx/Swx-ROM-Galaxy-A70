.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ACCESSIBILITY_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accessibility.AccessibilityManagerService$Lifecycle"

.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final ADB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.adb.AdbService$Lifecycle"

.field private static final AOD_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.aod.AODManagerService"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final APP_PREDICTION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appprediction.AppPredictionManagerService"

.field private static final APP_SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appsearch.AppSearchManagerService"

.field private static final AUTO_FILL_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.autofill.AutofillManagerService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOB_STORE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.blob.BlobStoreManagerService"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final CAR_SERVICE_HELPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.internal.car.CarServiceHelperService"

.field private static final COCKTAIL_BAR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.cocktailbar.CocktailBarManagerService"

.field private static final COMPANION_DEVICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.companion.CompanionDeviceManagerService"

.field private static final CONTENT_CAPTURE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.contentcapture.ContentCaptureManagerService"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final CONTENT_SUGGESTIONS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.contentsuggestions.ContentSuggestionsManagerService"

.field private static final COVER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.cover.CoverManagerService"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x1030435

.field private static final DEVICE_IDLE_CONTROLLER_CLASS:Ljava/lang/String; = "com.android.server.DeviceIdleController"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final GSI_RUNNING_PROP:Ljava/lang/String; = "ro.gsid.image_running"

.field private static final IOT_SERVICE_CLASS:Ljava/lang/String; = "com.android.things.server.IoTSystemService"

.field private static final ISRB_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.isrb.IsrbManagerService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.locksettings.LockSettingsService$Lifecycle"

.field private static final LOWPAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.lowpan.LowpanService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final PACM_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.PACMService"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final ROLLBACK_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.rollback.RollbackManagerService"

.field private static final SALES_CODE_CHANGED_FILE:Ljava/lang/String; = "/efs/imei/salesCodeChanged"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SEMWIFI_SERVICE_JAR_PATH:Ljava/lang/String; = "/system/framework/semwifi-service.jar"

.field private static final SEM_PRIVILEGE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.privilege.SemPrivilegeManagerService"

.field private static final SEM_WIFI_AWARE_SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.server.wifi.aware.SemWifiAwareService"

.field private static final SEM_WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.server.wifi.p2p.SemWifiP2pService"

.field private static final SEM_WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.server.wifi.SemWifiService"

.field private static final SEPUNION_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.sepunion.SemUnionMainService"

.field private static final SLICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.slice.SliceManagerService$Lifecycle"

.field private static final SLOW_DELIVERY_THRESHOLD_MS:J = 0xc8L

.field private static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final START_BLOB_STORE_SERVICE:Ljava/lang/String; = "startBlobStoreManagerService"

.field private static final START_HIDL_SERVICES:Ljava/lang/String; = "StartHidlServices"

.field private static final START_SENSOR_SERVICE:Ljava/lang/String; = "StartSensorService"

.field private static final STATS_COMPANION_APEX_PATH:Ljava/lang/String; = "/apex/com.android.os.statsd/javalib/service-statsd.jar"

.field private static final STATS_COMPANION_LIFECYCLE_CLASS:Ljava/lang/String; = "com.android.server.stats.StatsCompanion$Lifecycle"

.field private static final STATS_PULL_ATOM_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.stats.pull.StatsPullAtomService"

.field private static final STORAGE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.StorageManagerService$Lifecycle"

.field private static final STORAGE_STATS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usage.StorageStatsService$Lifecycle"

.field private static final SYSPROP_START_COUNT:Ljava/lang/String; = "sys.system_server.start_count"

.field private static final SYSPROP_START_ELAPSED:Ljava/lang/String; = "sys.system_server.start_elapsed"

.field private static final SYSPROP_START_UPTIME:Ljava/lang/String; = "sys.system_server.start_uptime"

.field private static final SYSTEM_CAPTIONS_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.systemcaptions.SystemCaptionsManagerService"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final TETHERING_CONNECTOR_CLASS:Ljava/lang/String; = "android.net.ITetheringConnector"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final TIMA_KEYSTORE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.enterprise.keystore.TimaKeystoreService$Lifecycle"

.field private static final TIME_DETECTOR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timedetector.TimeDetectorService$Lifecycle"

.field private static final TIME_ZONE_DETECTOR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timezonedetector.TimeZoneDetectorService$Lifecycle"

.field private static final TIME_ZONE_RULES_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timezone.RulesManagerService$Lifecycle"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_CONNECTIVITY_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.connectivity.WearConnectivityService"

.field private static final WEAR_DISPLAY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.display.WearDisplayService"

.field private static final WEAR_GLOBAL_ACTIONS_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.globalactions.GlobalActionsService"

.field private static final WEAR_LEFTY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.lefty.WearLeftyService"

.field private static final WEAR_POWER_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.power.WearPowerService"

.field private static final WEAR_SIDEKICK_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.sidekick.SidekickService"

.field private static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.time.WearTimeService"

.field private static final WIFI_APEX_SERVICE_JAR_PATH:Ljava/lang/String; = "/apex/com.android.wifi/javalib/service-wifi.jar"

.field private static final WIFI_AWARE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.aware.WifiAwareService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_RTT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.rtt.RttService"

.field private static final WIFI_SCANNING_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.scanner.WifiScanningService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final sMaxBinderThreads:I = 0x1f

.field private static sPendingWtfs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/app/ApplicationErrorReport$CrashInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final IS_DYNAMIC_LOCKSCREEN_ENABLED:Z

.field private final IS_OVERLAY_THEMES_ENABLED:Z

.field private ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

.field credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

.field enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

.field knoxCustomPolicy:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field private mASKSManagerService:Lcom/android/server/asks/ASKSManagerService;

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mBlobStoreServiceStart:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDataLoaderManagerService:Lcom/android/server/pm/DataLoaderManagerService;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field mDualAppService:Lcom/android/server/DualAppManagerService;

.field private mEntropyMixer:Lcom/android/server/EntropyMixer;

.field private mEpicManagerService:Landroid/os/epic/EpicManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mIncrementalServiceHandle:J

.field private mLedBackCoverService:Lcom/android/server/ledcover/LedBackCoverService;

.field private mLedCoverAppService:Lcom/android/server/ledcoverapp/LedCoverAppService;

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private final mRuntimeRestart:Z

.field private final mRuntimeStartElapsedTime:J

.field private final mRuntimeStartUptime:J

.field private mSHealthService:Lcom/android/server/shealth/SamsungHealthService;

.field private mSamsungNotesService:Lcom/android/server/samsungnotes/SamsungNotesService;

.field private mSensorServiceStart:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mSmartThingsService:Lcom/android/server/smartthings/SmartThingsService;

.field private final mStartCount:I

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mVoiceNoteService:Lcom/android/server/voicenote/VoiceNoteService;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

.field private mWifiOffloadService:Lcom/android/server/wifioffload/WifiOffloadService;

.field private mWindowManagerGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private mZygotePreload:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

.field safeModeValueForTheme:Z

.field private timaService:Lcom/android/server/TimaService;

.field ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SystemServer;->enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .line 476
    iput-object v0, p0, Lcom/android/server/SystemServer;->knoxCustomPolicy:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 652
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/SystemServer;->IS_OVERLAY_THEMES_ENABLED:Z

    .line 654
    nop

    .line 655
    const-string v2, "12.1"

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4027000000000000L    # 11.5

    cmpl-double v2, v2, v4

    const/4 v3, 0x0

    if-ltz v2, :cond_1c

    move v2, v1

    goto :goto_1d

    :cond_1c
    move v2, v3

    :goto_1d
    iput-boolean v2, p0, Lcom/android/server/SystemServer;->IS_DYNAMIC_LOCKSCREEN_ENABLED:Z

    .line 681
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 726
    iput-object v0, p0, Lcom/android/server/SystemServer;->mDualAppService:Lcom/android/server/DualAppManagerService;

    .line 730
    iput-object v0, p0, Lcom/android/server/SystemServer;->ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 731
    iput-object v0, p0, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 734
    iput-object v0, p0, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 741
    iput-object v0, p0, Lcom/android/server/SystemServer;->timaService:Lcom/android/server/TimaService;

    .line 742
    iput-object v0, p0, Lcom/android/server/SystemServer;->ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 783
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 788
    const-string/jumbo v0, "sys.system_server.start_count"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 789
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 790
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 791
    iget-wide v2, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v2, v3, v0, v1}, Landroid/os/Process;->setStartTimes(JJ)V

    .line 797
    const-string/jumbo v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 798
    return-void
.end method

.method private createSystemContext()V
    .registers 4

    .line 1103
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1104
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1105
    const v2, 0x1030435

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 1107
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 1108
    .local v1, "systemUiContext":Landroid/content/Context;
    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 1109
    return-void
.end method

.method private deviceHasConfigString(Landroid/content/Context;I)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 4307
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4308
    .local v0, "serviceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static handleEarlySystemWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z
    .registers 13
    .param p0, "app"    # Landroid/os/IBinder;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "system"    # Z
    .param p3, "crashInfo"    # Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    .param p4, "immediateCallerPid"    # I

    .line 4395
    const-string/jumbo v0, "system_server"

    .line 4396
    .local v0, "processName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    .line 4398
    .local v7, "myPid":I
    const/16 v1, 0x3e8

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v6, p3, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->exceptionMessage:Ljava/lang/String;

    const-string/jumbo v3, "system_server"

    const/4 v4, -0x1

    move v2, v7

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/EventLogTags;->writeAmWtf(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 4401
    const/16 v1, 0x50

    const/16 v2, 0x3e8

    const-string/jumbo v4, "system_server"

    const/4 v6, 0x3

    move-object v3, p1

    move v5, v7

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;II)V

    .line 4404
    const-class v1, Lcom/android/server/SystemServer;

    monitor-enter v1

    .line 4405
    :try_start_28
    sget-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    if-nez v2, :cond_33

    .line 4406
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    sput-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    .line 4408
    :cond_33
    sget-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4409
    monitor-exit v1

    .line 4410
    const/4 v1, 0x0

    return v1

    .line 4409
    :catchall_40
    move-exception v2

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_28 .. :try_end_42} :catchall_40

    throw v2
.end method

.method private static native initZygoteChildHeapProfiling()V
.end method

.method private isFirstBootOrUpgrade()Z
    .registers 2

    .line 1040
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private isUCMSupported(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 1113
    const/4 v0, 0x1

    .line 1114
    .local v0, "isUcmEnabled":Z
    const-string/jumbo v1, "ro.factory.factory_binary"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "factory"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1116
    .local v1, "isFactoryBuild":Z
    if-eqz v1, :cond_12

    .line 1117
    const/4 v2, 0x0

    return v2

    .line 1119
    :cond_12
    return v0
.end method

.method public static synthetic lambda$-CPwHnC0JLmQ1R_LlAGbc_jvNjw(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/SystemServer;->handleEarlySystemWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$startBootstrapServices$0()V
    .registers 2

    .line 1387
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 1388
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string v1, "StartSensorService"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1389
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 1390
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1391
    return-void
.end method

.method static synthetic lambda$startOtherServices$1()V
    .registers 5

    .line 1560
    const-string v0, "SecondaryZygotePreload"

    const-string v1, "SystemServer"

    :try_start_4
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v2

    .line 1562
    .local v2, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1563
    sget-object v0, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    sget-object v3, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1564
    const-string v0, "Unable to preload default resources"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    :cond_20
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_23} :catch_24

    .line 1569
    .end local v2    # "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    goto :goto_2a

    .line 1567
    :catch_24
    move-exception v0

    .line 1568
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "Exception preloading default resources"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1570
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2a
    return-void
.end method

.method static synthetic lambda$startOtherServices$2()V
    .registers 2

    .line 1903
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 1904
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string v1, "StartHidlServices"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1905
    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    .line 1906
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1907
    return-void
.end method

.method static synthetic lambda$startOtherServices$6(Landroid/os/IBinder;)V
    .registers 4
    .param p0, "service"    # Landroid/os/IBinder;

    .line 4147
    const-string/jumbo v0, "tethering"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, p0, v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 4150
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .param p0, "args"    # [Ljava/lang/String;

    .line 778
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 779
    return-void
.end method

.method private performPendingShutdown()V
    .registers 10

    .line 1049
    const-string v0, "SystemServer"

    const-string/jumbo v1, "sys.shutdown.requested"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1051
    .local v1, "shutdownAction":Ljava/lang/String;
    if-eqz v1, :cond_8a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8a

    .line 1052
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1f

    move v3, v5

    goto :goto_20

    :cond_1f
    move v3, v2

    .line 1055
    .local v3, "reboot":Z
    :goto_20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_2f

    .line 1056
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "reason":Ljava/lang/String;
    goto :goto_30

    .line 1058
    .end local v4    # "reason":Ljava/lang/String;
    :cond_2f
    const/4 v4, 0x0

    .line 1066
    .restart local v4    # "reason":Ljava/lang/String;
    :goto_30
    if-eqz v4, :cond_73

    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 1067
    new-instance v6, Ljava/io/File;

    const-string v7, "/cache/recovery/uncrypt_file"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1068
    .local v6, "packageFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_73

    .line 1069
    const/4 v7, 0x0

    .line 1071
    .local v7, "filename":Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_4a
    invoke-static {v6, v2, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4e} :catch_50

    move-object v7, v2

    .line 1074
    goto :goto_56

    .line 1072
    :catch_50
    move-exception v2

    .line 1073
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "Error reading uncrypt package file"

    invoke-static {v0, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1076
    .end local v2    # "e":Ljava/io/IOException;
    :goto_56
    if-eqz v7, :cond_73

    const-string v2, "/data"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1077
    new-instance v2, Ljava/io/File;

    const-string v8, "/cache/recovery/block.map"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_73

    .line 1078
    const-string v2, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    return-void

    .line 1085
    .end local v6    # "packageFile":Ljava/io/File;
    .end local v7    # "filename":Ljava/lang/String;
    :cond_73
    new-instance v0, Lcom/android/server/SystemServer$2;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V

    .line 1095
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    .line 1096
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1097
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1100
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "reboot":Z
    .end local v4    # "reason":Ljava/lang/String;
    :cond_8a
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 1044
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1046
    return-void
.end method

.method private run()V
    .registers 16

    .line 801
    const-string/jumbo v0, "persist.sys.language"

    const-string/jumbo v1, "persist.sys.timezone"

    const-string v2, ""

    const-string v3, "SystemServer"

    new-instance v4, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 803
    .local v4, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_f
    const-string v5, "InitBeforeStartServices"

    invoke-virtual {v4, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 806
    const-string/jumbo v5, "sys.system_server.start_count"

    iget v6, p0, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const-string/jumbo v5, "sys.system_server.start_elapsed"

    iget-wide v6, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    const-string/jumbo v5, "sys.system_server.start_uptime"

    iget-wide v6, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    const-string v5, "!@Boot_EBS_F: SYSTEM_SERVER_START"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const/16 v5, 0xbc3

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 812
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-wide v9, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const/4 v7, 0x2

    iget-wide v10, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v6, v7

    .line 811
    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 817
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 818
    .local v5, "timezoneProperty":Ljava/lang/String;
    if-eqz v5, :cond_6c

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_76

    .line 819
    :cond_6c
    const-string v6, "Timezone not set; setting to GMT."

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const-string v6, "GMT"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    :cond_76
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9d

    .line 832
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    .line 834
    .local v1, "languageTag":Ljava/lang/String;
    const-string/jumbo v6, "persist.sys.locale"

    invoke-static {v6, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const-string/jumbo v0, "persist.sys.country"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const-string/jumbo v0, "persist.sys.localevar"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    .end local v1    # "languageTag":Ljava/lang/String;
    :cond_9d
    invoke-static {}, Landroid/os/Binder;->setSystemServerProcess()V

    .line 845
    invoke-static {v9}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    .line 847
    invoke-static {}, Landroid/content/pm/PackageItemInfo;->forceSafeLabels()V

    .line 850
    const-string v0, "FULL"

    sput-object v0, Landroid/database/sqlite/SQLiteGlobal;->sDefaultSyncMode:Ljava/lang/String;

    .line 853
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    .line 856
    const-string v1, "!@Boot: Entered the Android system server!"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 858
    .local v1, "uptimeMillis":J
    const-string v6, "!@Boot_EBS_F: BOOT_PROGRESS_SYSTEM_RUN"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/16 v6, 0xbc2

    invoke-static {v6, v1, v2}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 860
    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/16 v7, 0xf0

    if-nez v6, :cond_cc

    .line 861
    const/16 v6, 0x13

    invoke-static {v7, v6, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 874
    :cond_cc
    const-string/jumbo v6, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v10

    invoke-virtual {v10}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 881
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 885
    invoke-static {v9}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 889
    invoke-static {v9}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 892
    invoke-static {v9}, Landroid/os/Parcel;->setStackTraceParceling(Z)V

    .line 895
    invoke-static {v9}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 898
    const/16 v6, 0x1f

    invoke-static {v6}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 901
    const/4 v6, -0x2

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 903
    invoke-static {v8}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 904
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 905
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    const-wide/16 v10, 0x64

    const-wide/16 v12, 0xc8

    invoke-virtual {v6, v10, v11, v12, v13}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 908
    sput-boolean v9, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    .line 911
    const-string v6, "android_servers"

    invoke-static {v6}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 914
    invoke-static {}, Lcom/android/server/SystemServer;->initZygoteChildHeapProfiling()V

    .line 917
    sget-boolean v6, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v6, :cond_11b

    .line 918
    invoke-static {}, Lcom/android/server/SystemServer;->spawnFdLeakCheckThread()V

    .line 923
    :cond_11b
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 926
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 929
    invoke-static {}, Landroid/app/ActivityThread;->initializeMainlineModules()V

    .line 932
    new-instance v9, Lcom/android/server/SystemServiceManager;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v9, v6}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 933
    iget-boolean v10, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    iget-wide v11, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    iget-wide v13, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/SystemServiceManager;->setStartInfo(ZJJ)V

    .line 935
    const-class v6, Lcom/android/server/SystemServiceManager;

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v6, v9}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 937
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->start()V

    .line 939
    sget-boolean v6, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_142
    .catchall {:try_start_f .. :try_end_142} :catchall_255

    const-string v9, "System"

    if-eqz v6, :cond_185

    .line 941
    :try_start_146
    const-string/jumbo v6, "persist.sys.dalvik.jvmtiagent"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 942
    .local v6, "jvmtiAgent":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_185

    .line 943
    const/16 v10, 0x3d

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 944
    .local v10, "equalIndex":I
    invoke-virtual {v6, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 945
    .local v8, "libraryPath":Ljava/lang/String;
    add-int/lit8 v11, v10, 0x1

    .line 946
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11
    :try_end_167
    .catchall {:try_start_146 .. :try_end_167} :catchall_255

    .line 949
    .local v11, "parameterList":Ljava/lang/String;
    :try_start_167
    invoke-static {v8, v11, v0}, Landroid/os/Debug;->attachJvmtiAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_16a} :catch_16b
    .catchall {:try_start_167 .. :try_end_16a} :catchall_255

    .line 953
    goto :goto_185

    .line 950
    :catch_16b
    move-exception v12

    .line 951
    .local v12, "e":Ljava/lang/Exception;
    :try_start_16c
    const-string v13, "*************************************************"

    invoke-static {v9, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "********** Failed to load jvmti plugin: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_185
    .catchall {:try_start_16c .. :try_end_185} :catchall_255

    .line 957
    .end local v1    # "uptimeMillis":J
    .end local v5    # "timezoneProperty":Ljava/lang/String;
    .end local v6    # "jvmtiAgent":Ljava/lang/String;
    .end local v8    # "libraryPath":Ljava/lang/String;
    .end local v10    # "equalIndex":I
    .end local v11    # "parameterList":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_185
    :goto_185
    invoke-virtual {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 958
    nop

    .line 961
    sget-object v1, Lcom/android/server/-$$Lambda$SystemServer$-CPwHnC0JLmQ1R_LlAGbc_jvNjw;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$-CPwHnC0JLmQ1R_LlAGbc_jvNjw;

    invoke-static {v1}, Lcom/android/internal/os/RuntimeInit;->setDefaultApplicationWtfHandler(Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;)V

    .line 965
    :try_start_18e
    const-string v1, "StartServices"

    invoke-virtual {v4, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 966
    const-string v1, "!@Boot_EBS_F: startBootstrapServices"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-direct {p0, v4}, Lcom/android/server/SystemServer;->startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 968
    const-string v1, "!@Boot_EBS_F: startCoreServices"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    invoke-direct {p0, v4}, Lcom/android/server/SystemServer;->startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 970
    const-string v1, "!@Boot_EBS_F: startOtherServices"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-direct {p0, v4}, Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 972
    const-string v1, "!@Boot_EBS_D: SystemServerInitThreadPool"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->shutdown()V
    :try_end_1b3
    .catchall {:try_start_18e .. :try_end_1b3} :catchall_243

    .line 979
    invoke-virtual {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 980
    nop

    .line 982
    invoke-static {v0}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 989
    :try_start_1ba
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.voc"

    const/16 v2, 0x80

    .line 990
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 989
    invoke-interface {v0, v1, v2, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 992
    .local v0, "samsungmembersInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1d5

    .line 993
    const-string/jumbo v1, "sys.members.installed"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d5
    .catch Landroid/os/RemoteException; {:try_start_1ba .. :try_end_1d5} :catch_1d6

    .line 997
    .end local v0    # "samsungmembersInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1d5
    goto :goto_1d7

    .line 995
    :catch_1d6
    move-exception v0

    .line 999
    :goto_1d7
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_20a

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_20a

    .line 1000
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1001
    .local v0, "uptimeMillis":J
    const/16 v2, 0x14

    invoke-static {v7, v2, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1004
    const-wide/32 v5, 0xea60

    .line 1005
    .local v5, "maxUptimeMillis":J
    const-wide/32 v7, 0xea60

    cmp-long v2, v0, v7

    if-lez v2, :cond_20a

    .line 1006
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SystemServer init took too long. uptimeMillis="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "SystemServerTiming"

    invoke-static {v7, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    .end local v0    # "uptimeMillis":J
    .end local v5    # "maxUptimeMillis":J
    :cond_20a
    invoke-static {}, Ldalvik/system/VMRuntime;->hasBootImageSpaces()Z

    move-result v0

    if-nez v0, :cond_215

    .line 1014
    const-string v0, "Runtime is not running with a boot image!"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_215
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz v0, :cond_22e

    .line 1019
    const/16 v0, 0x7530

    .line 1020
    .local v0, "nPromotionDelay":I
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    .line 1021
    .local v1, "myTid":I
    new-instance v2, Lcom/android/server/SystemServer$1;

    invoke-direct {v2, p0, v1}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;I)V

    .line 1027
    .local v2, "mTimerTask":Ljava/util/TimerTask;
    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    .line 1028
    .local v5, "timer":Ljava/util/Timer;
    const-wide/16 v6, 0x7530

    invoke-virtual {v5, v2, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1033
    .end local v0    # "nPromotionDelay":I
    .end local v1    # "myTid":I
    .end local v2    # "mTimerTask":Ljava/util/TimerTask;
    .end local v5    # "timer":Ljava/util/Timer;
    :cond_22e
    const-string v0, "!@Boot: Loop forever"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const-string v0, "!@Boot_EBS_D: Loop forever"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1036
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 974
    :catchall_243
    move-exception v0

    .line 975
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_244
    const-string v1, "******************************************"

    invoke-static {v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const-string v1, "************ Failure starting system services"

    invoke-static {v9, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 977
    nop

    .end local v4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p0    # "this":Lcom/android/server/SystemServer;
    throw v0
    :try_end_250
    .catchall {:try_start_244 .. :try_end_250} :catchall_250

    .line 979
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p0    # "this":Lcom/android/server/SystemServer;
    :catchall_250
    move-exception v0

    invoke-virtual {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 980
    throw v0

    .line 957
    :catchall_255
    move-exception v0

    invoke-virtual {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 958
    throw v0
.end method

.method private static native setIncrementalServiceSystemReady(J)V
.end method

.method private static native spawnFdLeakCheckThread()V
.end method

.method private startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4369
    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService;->isServiceConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 4370
    const-string v0, "SystemServer"

    const-string v1, "AttentionService is not configured on this device"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4371
    return-void

    .line 4374
    :cond_e
    const-string v0, "StartAttentionManagerService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4375
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4376
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4377
    return-void
.end method

.method private startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 18
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1130
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v3, "packagemanagermain"

    const-string/jumbo v4, "moveab"

    const-string/jumbo v0, "startBootstrapServices"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1134
    const-string v0, "StartWatchdog"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1135
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    .line 1136
    .local v5, "watchdog":Lcom/android/server/Watchdog;
    invoke-virtual {v5}, Lcom/android/server/Watchdog;->start()V

    .line 1137
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1139
    const-string v6, "SystemServer"

    const-string v0, "Reading configuration..."

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const-string v7, "ReadingSystemConfig"

    .line 1141
    .local v7, "TAG_SYSTEM_CONFIG":Ljava/lang/String;
    const-string v0, "ReadingSystemConfig"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1142
    sget-object v8, Lcom/android/server/-$$Lambda$YWiwiKm_Qgqb55C6tTuq_n2JzdY;->INSTANCE:Lcom/android/server/-$$Lambda$YWiwiKm_Qgqb55C6tTuq_n2JzdY;

    invoke-static {v8, v0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1143
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1147
    const-string v0, "PlatformCompat"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1148
    new-instance v0, Lcom/android/server/compat/PlatformCompat;

    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Lcom/android/server/compat/PlatformCompat;-><init>(Landroid/content/Context;)V

    move-object v8, v0

    .line 1149
    .local v8, "platformCompat":Lcom/android/server/compat/PlatformCompat;
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1150
    new-instance v0, Lcom/android/server/compat/PlatformCompatNative;

    invoke-direct {v0, v8}, Lcom/android/server/compat/PlatformCompatNative;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    const-string/jumbo v9, "platform_compat_native"

    invoke-static {v9, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1152
    const/4 v9, 0x0

    new-array v0, v9, [J

    invoke-static {v0}, Landroid/app/AppCompatCallbacks;->install([J)V

    .line 1153
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1158
    const-string v0, "StartFileIntegrityService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1159
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/security/FileIntegrityService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1160
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1165
    const-string v0, "StartInstaller"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1166
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/pm/Installer;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/pm/Installer;

    .line 1167
    .local v10, "installer":Lcom/android/server/pm/Installer;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1171
    const-string v0, "DeviceIdentifiersPolicyService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1172
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1173
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1176
    const-string v0, "UriGrantsManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1177
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1178
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1181
    const-string v0, "StartActivityManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1183
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    .line 1184
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v11

    .line 1185
    .local v11, "atm":Lcom/android/server/wm/ActivityTaskManagerService;
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v11}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->startService(Lcom/android/server/SystemServiceManager;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1187
    iget-object v12, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v12}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 1188
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 1189
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/SystemServer;->mWindowManagerGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 1190
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1193
    const-string v0, "StartDataLoaderManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1194
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/pm/DataLoaderManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/DataLoaderManagerService;

    iput-object v0, v1, Lcom/android/server/SystemServer;->mDataLoaderManagerService:Lcom/android/server/pm/DataLoaderManagerService;

    .line 1196
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1199
    const-string v0, "StartIncrementalService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1200
    invoke-static {}, Lcom/android/server/SystemServer;->startIncrementalService()J

    move-result-wide v12

    iput-wide v12, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 1201
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1207
    const-string v0, "StartPowerManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1208
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService;

    iput-object v0, v1, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 1209
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1211
    const-string v0, "StartThermalManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1212
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1213
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1217
    const-string v0, "InitPowerManagement"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1218
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 1219
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1222
    const-string v0, "VaultKeeperService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1223
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/VaultKeeperService$LifeCycle;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1224
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1228
    const-string v0, "PACMService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1229
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v12, "com.android.server.PACMService"

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1230
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1234
    const-string v0, "StartRecoverySystemService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1235
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1236
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1241
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/RescueParty;->registerHealthObserver(Landroid/content/Context;)V

    .line 1242
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/PackageWatchdog;->noteBoot()V

    .line 1245
    const-string v0, "StartLightsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1246
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/lights/LightsService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1247
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1250
    const-string v0, "StartPdpService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1251
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/pdp/PdpService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1252
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1254
    const-string v0, "StartSidekickService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1256
    const-string v0, "config.enable_sidekick_graphics"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_189

    .line 1257
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v12, "com.google.android.clockwork.sidekick.SidekickService"

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1259
    :cond_189
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1263
    const-string v0, "StartDisplayManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1264
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayManagerService;

    iput-object v0, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 1265
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1268
    const-string v0, "WaitForDisplay"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1269
    const-string v0, "!@Boot_EBS_D: PHASE_WAIT_FOR_DEFAULT_DISPLAY"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v12, 0x64

    invoke-virtual {v0, v2, v12}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 1271
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1274
    invoke-static {}, Landroid/sysprop/VoldProperties;->decrypt()Ljava/util/Optional;

    move-result-object v0

    const-string v12, ""

    invoke-virtual {v0, v12}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 1275
    .local v12, "cryptState":Ljava/lang/String;
    const-string/jumbo v0, "trigger_restart_min_framework"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_1d3

    .line 1276
    const-string v0, "Detected encryption in progress - only parsing core apps"

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    iput-boolean v13, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_1e2

    .line 1278
    :cond_1d3
    const-string v0, "1"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e2

    .line 1279
    const-string v0, "Device encrypted - only parsing core apps"

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    iput-boolean v13, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 1284
    :cond_1e2
    :goto_1e2
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/16 v14, 0xf0

    if-nez v0, :cond_1f3

    .line 1285
    const/16 v0, 0xe

    .line 1288
    move-object v15, v10

    .end local v10    # "installer":Lcom/android/server/pm/Installer;
    .local v15, "installer":Lcom/android/server/pm/Installer;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 1285
    invoke-static {v14, v0, v9, v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    goto :goto_1f4

    .line 1284
    .end local v15    # "installer":Lcom/android/server/pm/Installer;
    .restart local v10    # "installer":Lcom/android/server/pm/Installer;
    :cond_1f3
    move-object v15, v10

    .line 1291
    .end local v10    # "installer":Lcom/android/server/pm/Installer;
    .restart local v15    # "installer":Lcom/android/server/pm/Installer;
    :goto_1f4
    const-string v0, "StartPackageManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1292
    const-string v0, "!@Boot: Start PackageManagerService"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :try_start_1fe
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1295
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v9, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v9, :cond_20c

    goto :goto_20d

    :cond_20c
    const/4 v13, 0x0

    :goto_20d
    iget-boolean v9, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z
    :try_end_20f
    .catchall {:try_start_1fe .. :try_end_20f} :catchall_338

    move-object v10, v15

    .end local v15    # "installer":Lcom/android/server/pm/Installer;
    .restart local v10    # "installer":Lcom/android/server/pm/Installer;
    :try_start_210
    invoke-static {v0, v10, v13, v9}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;
    :try_end_216
    .catchall {:try_start_210 .. :try_end_216} :catchall_334

    .line 1298
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1299
    nop

    .line 1300
    const-string v0, "!@Boot: End PackageManagerService"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/dex/SystemServerDexLoadReporter;->configureSystemServerDexReporter(Landroid/content/pm/IPackageManager;)V

    .line 1307
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 1308
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1309
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1310
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_251

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_251

    .line 1311
    const/16 v0, 0xf

    .line 1314
    move-object v9, v7

    move-object v13, v8

    .end local v7    # "TAG_SYSTEM_CONFIG":Ljava/lang/String;
    .end local v8    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .local v9, "TAG_SYSTEM_CONFIG":Ljava/lang/String;
    .local v13, "platformCompat":Lcom/android/server/compat/PlatformCompat;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1311
    invoke-static {v14, v0, v7, v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    goto :goto_253

    .line 1310
    .end local v9    # "TAG_SYSTEM_CONFIG":Ljava/lang/String;
    .end local v13    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .restart local v7    # "TAG_SYSTEM_CONFIG":Ljava/lang/String;
    .restart local v8    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    :cond_251
    move-object v9, v7

    move-object v13, v8

    .line 1318
    .end local v7    # "TAG_SYSTEM_CONFIG":Ljava/lang/String;
    .end local v8    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .restart local v9    # "TAG_SYSTEM_CONFIG":Ljava/lang/String;
    .restart local v13    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    :goto_253
    const-string v0, "StartASKSManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1319
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->main(Landroid/content/Context;)Lcom/android/server/asks/ASKSManagerService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/SystemServer;->mASKSManagerService:Lcom/android/server/asks/ASKSManagerService;

    .line 1320
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1325
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_2a2

    .line 1326
    const-string v0, "config.disable_otadexopt"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 1328
    .local v7, "disableOtaDexopt":Z
    if-nez v7, :cond_2a2

    .line 1329
    const-string v0, "StartOtaDexOptService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1331
    :try_start_275
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1332
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, v3}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_283
    .catchall {:try_start_275 .. :try_end_283} :catchall_284

    goto :goto_28b

    .line 1333
    :catchall_284
    move-exception v0

    .line 1334
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_285
    const-string/jumbo v3, "starting OtaDexOptService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_28b
    .catchall {:try_start_285 .. :try_end_28b} :catchall_296

    .line 1336
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_28b
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1337
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1338
    goto :goto_2a2

    .line 1336
    :catchall_296
    move-exception v0

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1337
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1338
    throw v0

    .line 1342
    .end local v7    # "disableOtaDexopt":Z
    :cond_2a2
    :goto_2a2
    const-string v0, "StartUserManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1343
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1344
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1347
    const-string v0, "InitAttributerCache"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1348
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 1349
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1352
    const-string v0, "SetSystemProcess"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1353
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 1354
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1358
    const-string v0, "InitWatchdog"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1359
    const-string v0, "!@Boot_EBS_D: InitWatchdog"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v0, v3}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 1361
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1365
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->setupSchedulerPolicies()V

    .line 1368
    const-string v0, "StartOverlayManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1369
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v3, Lcom/android/server/om/OverlayManagerService;

    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1370
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1372
    const-string v0, "StartSensorPrivacyService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1373
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v3, Lcom/android/server/SensorPrivacyService;

    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/SensorPrivacyService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1374
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1376
    const-string/jumbo v0, "persist.sys.displayinset.top"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_326

    .line 1378
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateSystemUiContext()V

    .line 1379
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->onOverlayChanged()V

    .line 1386
    :cond_326
    sget-object v0, Lcom/android/server/-$$Lambda$SystemServer$UyrPns7R814g-ZEylCbDKhe8It4;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$UyrPns7R814g-ZEylCbDKhe8It4;

    const-string v3, "StartSensorService"

    invoke-static {v0, v3}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 1393
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1394
    return-void

    .line 1298
    .end local v9    # "TAG_SYSTEM_CONFIG":Ljava/lang/String;
    .end local v13    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .local v7, "TAG_SYSTEM_CONFIG":Ljava/lang/String;
    .restart local v8    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    :catchall_334
    move-exception v0

    move-object v9, v7

    move-object v13, v8

    .end local v7    # "TAG_SYSTEM_CONFIG":Ljava/lang/String;
    .end local v8    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .restart local v9    # "TAG_SYSTEM_CONFIG":Ljava/lang/String;
    .restart local v13    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    goto :goto_33c

    .end local v9    # "TAG_SYSTEM_CONFIG":Ljava/lang/String;
    .end local v10    # "installer":Lcom/android/server/pm/Installer;
    .end local v13    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .restart local v7    # "TAG_SYSTEM_CONFIG":Ljava/lang/String;
    .restart local v8    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .restart local v15    # "installer":Lcom/android/server/pm/Installer;
    :catchall_338
    move-exception v0

    move-object v9, v7

    move-object v13, v8

    move-object v10, v15

    .end local v7    # "TAG_SYSTEM_CONFIG":Ljava/lang/String;
    .end local v8    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .end local v15    # "installer":Lcom/android/server/pm/Installer;
    .restart local v9    # "TAG_SYSTEM_CONFIG":Ljava/lang/String;
    .restart local v10    # "installer":Lcom/android/server/pm/Installer;
    .restart local v13    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    :goto_33c
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1299
    throw v0
.end method

.method private startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4326
    const/4 v0, 0x0

    .line 4327
    .local v0, "explicitlyEnabled":Z
    const-string v1, "content_capture"

    const-string/jumbo v2, "service_explicitly_enabled"

    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4329
    .local v1, "settings":Ljava/lang/String;
    const-string v2, "SystemServer"

    if-eqz v1, :cond_28

    const-string v3, "default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 4330
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 4331
    if-eqz v0, :cond_22

    .line 4332
    const-string v3, "ContentCaptureService explicitly enabled by DeviceConfig"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 4334
    :cond_22
    const-string v3, "ContentCaptureService explicitly disabled by DeviceConfig"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4335
    return-void

    .line 4340
    :cond_28
    :goto_28
    if-nez v0, :cond_39

    .line 4341
    const v3, 0x10402c5

    invoke-direct {p0, p1, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_39

    .line 4342
    const-string v3, "ContentCaptureService disabled because resource is not overlaid"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4343
    return-void

    .line 4356
    :cond_39
    const-string v2, "StartContentCaptureService"

    invoke-virtual {p2, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4357
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.contentcapture.ContentCaptureManagerService"

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 4359
    const-class v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 4360
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 4361
    .local v2, "ccmi":Lcom/android/server/contentcapture/ContentCaptureManagerInternal;
    if-eqz v2, :cond_56

    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v3, :cond_56

    .line 4362
    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->setContentCaptureManager(Lcom/android/server/contentcapture/ContentCaptureManagerInternal;)V

    .line 4365
    :cond_56
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4366
    return-void
.end method

.method private startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1400
    const-string/jumbo v0, "startCoreServices"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1403
    const-string/jumbo v0, "persist.sys.enable_isrb"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1404
    .local v0, "startisrbservice":Z
    if-eqz v0, :cond_1f

    .line 1405
    const-string v1, "StartISRBService"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1406
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.isrb.IsrbManagerService"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1407
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1412
    :cond_1f
    const-string v1, "StartSystemConfigService"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1413
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/SystemConfigService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1414
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1416
    const-string v1, "StartBatteryService"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1418
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/BatteryService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1419
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1422
    const-string v1, "StartUsageService"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1423
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1424
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v2, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1425
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1424
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 1426
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1429
    iget-object v1, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.webview"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 1430
    const-string v1, "StartWebViewUpdateService"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1431
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v1, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 1432
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1436
    :cond_77
    const-string v1, "StartCachedDeviceStateService"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1437
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/CachedDeviceStateService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1438
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1441
    const-string v1, "StartBinderCallsStatsService"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1442
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/BinderCallsStatsService$LifeCycle;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1443
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1446
    const-string v1, "StartLooperStatsService"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1447
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/LooperStatsService$Lifecycle;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1448
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1451
    const-string v1, "StartRollbackManagerService"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1452
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.rollback.RollbackManagerService"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1453
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1456
    const-string v1, "StartBugreportManagerService"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1457
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/os/BugreportManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1458
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1461
    const-string v1, "GpuService"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1462
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/gpu/GpuService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1463
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1465
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1466
    return-void
.end method

.method private startDualAppManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4515
    const-string v0, "SystemServer"

    :try_start_2
    const-string v1, "DualAppManagerService"

    invoke-virtual {p2, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4517
    const-string/jumbo v1, "startDualAppManagerService | add Service : startDualAppManagerService"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4518
    if-nez p1, :cond_19

    .line 4519
    const-string/jumbo v1, "startDualAppManagerService | context is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_29

    .line 4529
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4520
    return-void

    .line 4522
    :cond_19
    :try_start_19
    iget-object v1, p0, Lcom/android/server/SystemServer;->mDualAppService:Lcom/android/server/DualAppManagerService;

    if-nez v1, :cond_28

    .line 4523
    invoke-static {p1}, Lcom/android/server/DualAppManagerService;->getInstance(Landroid/content/Context;)Lcom/android/server/DualAppManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mDualAppService:Lcom/android/server/DualAppManagerService;

    .line 4524
    const-string v2, "dual_app"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_29

    .line 4529
    :cond_28
    goto :goto_31

    .line 4526
    :catchall_29
    move-exception v1

    .line 4527
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2a
    const-string/jumbo v2, "startDualAppManagerService | Fail to start service"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_36

    .line 4529
    nop

    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_31
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4530
    nop

    .line 4531
    return-void

    .line 4529
    :catchall_36
    move-exception v0

    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4530
    throw v0
.end method

.method static final startEmergencyModeService(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 4500
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyFeaturesSupported()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 4502
    :try_start_6
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    .line 4503
    .local v0, "emMgr":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->readyEmergencyMode()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_e

    .line 4506
    .end local v0    # "emMgr":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    goto :goto_25

    .line 4504
    :catch_e
    move-exception v0

    .line 4505
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting emergency service failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemServer"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4508
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_25
    :goto_25
    return-void
.end method

.method private static native startHidlServices()V
.end method

.method private static native startIncrementalService()J
.end method

.method private startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 79
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1472
    move-object/from16 v7, p0

    move-object/from16 v6, p1

    const-string/jumbo v1, "startOtherServices"

    invoke-virtual {v6, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1474
    iget-object v4, v7, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1475
    .local v4, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 1476
    .local v1, "vibrator":Lcom/android/server/VibratorService;
    const/4 v2, 0x0

    .line 1477
    .local v2, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    const/4 v3, 0x0

    .line 1478
    .local v3, "storageManager":Landroid/os/storage/IStorageManager;
    const/4 v5, 0x0

    .line 1479
    .local v5, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v14, 0x0

    .line 1480
    .local v14, "ipSecService":Lcom/android/server/IpSecService;
    const/4 v15, 0x0

    .line 1481
    .local v15, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v16, 0x0

    .line 1482
    .local v16, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v17, 0x0

    .line 1484
    .local v17, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v23, 0x0

    .line 1485
    .local v23, "mcps":Lcom/android/server/McpsService;
    const/16 v18, 0x0

    .line 1486
    .local v18, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v19, 0x0

    .line 1487
    .local v19, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v20, 0x0

    .line 1488
    .local v20, "serial":Lcom/android/server/SerialService;
    const/16 v21, 0x0

    .line 1489
    .local v21, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/4 v8, 0x0

    .line 1491
    .local v8, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v24, 0x0

    .line 1493
    .local v24, "cameraMotorManager":Lcom/android/server/input/CameraMotorManagerService;
    const/4 v9, 0x0

    .line 1494
    .local v9, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/4 v10, 0x0

    .line 1495
    .local v10, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v22, 0x0

    .line 1496
    .local v22, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v25, 0x0

    .line 1497
    .local v25, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const/16 v26, 0x0

    .line 1499
    .local v26, "urspService":Lcom/android/server/net/UrspService;
    const/4 v11, 0x0

    .line 1500
    .local v11, "mPersonaService":Lcom/android/server/pm/PersonaManagerService;
    const/4 v12, 0x0

    .line 1502
    .local v12, "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    const/16 v27, 0x0

    .line 1505
    .local v27, "semClipboardService":Lcom/android/server/semclipboard/SemClipboardService;
    const/16 v28, 0x0

    .line 1515
    .local v28, "extControlDevice":Lcom/sec/rll/ExtControlDeviceService;
    const-string v13, "config.disable_systemtextclassifier"

    move-object/from16 v29, v1

    .end local v1    # "vibrator":Lcom/android/server/VibratorService;
    .local v29, "vibrator":Lcom/android/server/VibratorService;
    const/4 v1, 0x0

    invoke-static {v13, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    .line 1518
    .local v30, "disableSystemTextClassifier":Z
    const-string v13, "config.disable_networktime"

    invoke-static {v13, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    .line 1520
    .local v31, "disableNetworkTime":Z
    const-string v13, "config.disable_cameraservice"

    invoke-static {v13, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    .line 1522
    .local v32, "disableCameraService":Z
    const-string v13, "config.enable_lefty"

    invoke-static {v13, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v33

    .line 1524
    .local v33, "enableLeftyService":Z
    const-string/jumbo v13, "ro.kernel.qemu"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v1, "1"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    .line 1526
    .local v35, "isEmulator":Z
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v13, "android.hardware.type.watch"

    invoke-virtual {v1, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v36

    .line 1529
    .local v36, "isWatch":Z
    const-string/jumbo v1, "ro.config.disable_bluetooth"

    const/4 v13, 0x0

    invoke-static {v1, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v37

    .line 1531
    .local v37, "disableBluetooth":Z
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v13, "org.chromium.arc"

    invoke-virtual {v1, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v38

    .line 1534
    .local v38, "isArc":Z
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v13, "android.hardware.vr.high_performance"

    invoke-virtual {v1, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_89

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->LOW_PERSISTENCE_ENABLED:Z

    if-eqz v1, :cond_87

    goto :goto_89

    :cond_87
    const/4 v1, 0x0

    goto :goto_8a

    :cond_89
    :goto_89
    const/4 v1, 0x1

    :goto_8a
    move/from16 v39, v1

    .line 1540
    .local v39, "enableVrService":Z
    nop

    .line 1541
    const-string/jumbo v1, "ro.factory.factory_binary"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v13, "factory"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    .line 1544
    .local v41, "disableDSMS":Z
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_ae

    const-string v1, "debug.crash_system"

    const/4 v13, 0x0

    invoke-static {v1, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_a8

    goto :goto_ae

    .line 1545
    :cond_a8
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 1548
    :cond_ae
    :goto_ae
    const-string/jumbo v1, "lazy_service"

    invoke-virtual {v6, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1549
    new-instance v1, Landroid/os/ServiceManager;

    invoke-direct {v1}, Landroid/os/ServiceManager;-><init>()V

    iget-object v13, v7, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v1, v13}, Landroid/os/ServiceManager;->initLazyServiceManager(Landroid/content/Context;)V

    .line 1550
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1553
    :try_start_c1
    const-string v1, "SecondaryZygotePreload"

    .line 1558
    .local v1, "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    sget-object v13, Lcom/android/server/-$$Lambda$SystemServer$VBGb9VpEls6bUcVBPwYLtX7qDTs;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$VBGb9VpEls6bUcVBPwYLtX7qDTs;

    move-object/from16 v42, v1

    .end local v1    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    .local v42, "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    const-string v1, "SecondaryZygotePreload"

    invoke-static {v13, v1}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 1572
    const-string v1, "StartKeyAttestationApplicationIdProviderService"

    invoke-virtual {v6, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1573
    const-string/jumbo v1, "sec_key_att_app_id_provider"

    new-instance v13, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v13, v4}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1575
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1577
    const-string v1, "StartKeyChainSystemService"

    invoke-virtual {v6, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1578
    iget-object v1, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {v1, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1579
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1581
    const-string v1, "StartSchedulingPolicyService"

    invoke-virtual {v6, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1582
    const-string/jumbo v1, "scheduling_policy"

    new-instance v13, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v13}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v1, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1583
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1587
    const-string v1, "StartSpqrService"

    invoke-virtual {v6, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_109
    .catchall {:try_start_c1 .. :try_end_109} :catchall_1d55

    .line 1588
    const/4 v1, 0x0

    .line 1592
    .local v1, "spqrService":Lcom/android/server/SpqrService;
    :try_start_10a
    iget-object v13, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    :try_end_10c
    .catch Ljava/lang/RuntimeException; {:try_start_10a .. :try_end_10c} :catch_128
    .catchall {:try_start_10a .. :try_end_10c} :catchall_11c

    move-object/from16 v43, v1

    .end local v1    # "spqrService":Lcom/android/server/SpqrService;
    .local v43, "spqrService":Lcom/android/server/SpqrService;
    :try_start_10e
    const-class v1, Lcom/android/server/SpqrService;

    invoke-virtual {v13, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/SpqrService;
    :try_end_116
    .catch Ljava/lang/RuntimeException; {:try_start_10e .. :try_end_116} :catch_119
    .catchall {:try_start_10e .. :try_end_116} :catchall_11c

    .line 1596
    .end local v43    # "spqrService":Lcom/android/server/SpqrService;
    .restart local v1    # "spqrService":Lcom/android/server/SpqrService;
    move-object/from16 v44, v2

    goto :goto_137

    .line 1593
    .end local v1    # "spqrService":Lcom/android/server/SpqrService;
    .restart local v43    # "spqrService":Lcom/android/server/SpqrService;
    :catch_119
    move-exception v0

    move-object v1, v0

    goto :goto_12c

    .line 2020
    .end local v42    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    .end local v43    # "spqrService":Lcom/android/server/SpqrService;
    :catchall_11c
    move-exception v0

    move-object/from16 v47, v3

    move-object/from16 v74, v4

    move-object/from16 v48, v5

    move-object v1, v6

    move-object v3, v14

    move-object v4, v0

    goto/16 :goto_1d61

    .line 1593
    .restart local v1    # "spqrService":Lcom/android/server/SpqrService;
    .restart local v42    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catch_128
    move-exception v0

    move-object/from16 v43, v1

    move-object v1, v0

    .line 1595
    .local v1, "e":Ljava/lang/RuntimeException;
    .restart local v43    # "spqrService":Lcom/android/server/SpqrService;
    :goto_12c
    :try_start_12c
    const-string v13, "SystemServer"
    :try_end_12e
    .catchall {:try_start_12c .. :try_end_12e} :catchall_1d55

    move-object/from16 v44, v2

    .end local v2    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v44, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    :try_start_130
    const-string v2, "Failure starting Spqr Service"

    invoke-static {v13, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v1, v43

    .line 1597
    .end local v43    # "spqrService":Lcom/android/server/SpqrService;
    .local v1, "spqrService":Lcom/android/server/SpqrService;
    :goto_137
    iget-object v2, v7, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageManagerService;->setSpqrService(Lcom/android/server/SpqrService;)V

    .line 1598
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_13f
    .catchall {:try_start_130 .. :try_end_13f} :catchall_1d48

    .line 1605
    .end local v1    # "spqrService":Lcom/android/server/SpqrService;
    :try_start_13f
    const-string v1, "SEAMS"

    invoke-virtual {v6, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1606
    const-string v1, "SEAMService"

    new-instance v2, Lcom/android/server/SEAMService;

    invoke-direct {v2, v4}, Lcom/android/server/SEAMService;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1607
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_151
    .catchall {:try_start_13f .. :try_end_151} :catchall_152

    .line 1610
    goto :goto_15b

    .line 1608
    :catchall_152
    move-exception v0

    move-object v1, v0

    .line 1609
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_154
    const-string v2, "SystemServer"

    const-string v13, "Failure starting SE Android Manager Service"

    invoke-static {v2, v13, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1614
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_15b
    const-string v1, "StartTelecomLoaderService"

    invoke-virtual {v6, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1615
    iget-object v1, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1616
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1618
    const-string v1, "StartTelephonyRegistry"

    invoke-virtual {v6, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1619
    new-instance v1, Lcom/android/server/TelephonyRegistry;

    new-instance v2, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    invoke-direct {v2}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;-><init>()V

    invoke-direct {v1, v4, v2}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;Lcom/android/server/TelephonyRegistry$ConfigurationProvider;)V
    :try_end_179
    .catchall {:try_start_154 .. :try_end_179} :catchall_1d48

    move-object v2, v1

    .line 1621
    .end local v9    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v2, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_17a
    const-string/jumbo v1, "telephony.registry"

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1622
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1624
    const-string v1, "StartEntropyMixer"

    invoke-virtual {v6, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1625
    new-instance v1, Lcom/android/server/EntropyMixer;

    invoke-direct {v1, v4}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 1626
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_192
    .catchall {:try_start_17a .. :try_end_192} :catchall_1d37

    .line 1629
    :try_start_192
    const-string v1, "false"

    const-string/jumbo v9, "ro.product_ship"

    const-string v13, "false"

    invoke-static {v9, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1bd

    .line 1630
    const-string v1, "SEDenial"

    invoke-virtual {v6, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1631
    const-string/jumbo v1, "sedenial"

    new-instance v9, Lcom/android/server/SEDenialService;

    invoke-direct {v9, v4}, Lcom/android/server/SEDenialService;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1632
    const-string v1, "SystemServer"

    const-string v9, "SEDenial service added"

    invoke-static {v1, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_1bd
    .catchall {:try_start_192 .. :try_end_1bd} :catchall_1be

    .line 1637
    :cond_1bd
    goto :goto_1c7

    .line 1635
    :catchall_1be
    move-exception v0

    move-object v1, v0

    .line 1636
    .restart local v1    # "e":Ljava/lang/Throwable;
    :try_start_1c0
    const-string v9, "SystemServer"

    const-string v13, "Registration of denial service failed"

    invoke-static {v9, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1c7
    const-string v1, "SystemServer"

    const-string v9, "ActivationTeeService"

    invoke-static {v1, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    const-string v1, "SystemServer"

    const-string v9, "Reactive Service"

    invoke-static {v1, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d5
    .catchall {:try_start_1c0 .. :try_end_1d5} :catchall_1d37

    .line 1660
    :try_start_1d5
    const-string v1, "ReactiveService"

    new-instance v9, Lcom/android/server/ReactiveService;

    invoke-direct {v9, v4}, Lcom/android/server/ReactiveService;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1df
    .catchall {:try_start_1d5 .. :try_end_1df} :catchall_1e0

    .line 1664
    goto :goto_1e9

    .line 1661
    :catchall_1e0
    move-exception v0

    move-object v1, v0

    .line 1663
    .restart local v1    # "e":Ljava/lang/Throwable;
    :try_start_1e2
    const-string v9, "SystemServer"

    const-string v13, "Failed to add Reactive Service."

    invoke-static {v9, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1e9
    const-string v1, "StartPersonaManager"

    invoke-virtual {v6, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_1ee
    .catchall {:try_start_1e2 .. :try_end_1ee} :catchall_1d37

    .line 1670
    :try_start_1ee
    const-string v1, "SystemServer"

    const-string v9, "Persona Service"

    invoke-static {v1, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getInstance()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    move-object v11, v1

    .line 1672
    const-string/jumbo v1, "persona"

    invoke-static {v1, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_200
    .catchall {:try_start_1ee .. :try_end_200} :catchall_203

    .line 1675
    move-object/from16 v43, v11

    goto :goto_20e

    .line 1673
    :catchall_203
    move-exception v0

    move-object v1, v0

    .line 1674
    .restart local v1    # "e":Ljava/lang/Throwable;
    :try_start_205
    const-string v9, "SystemServer"

    const-string v13, "Failure starting Persona Manager Service"

    invoke-static {v9, v13, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20c
    .catchall {:try_start_205 .. :try_end_20c} :catchall_1d37

    move-object/from16 v43, v11

    .line 1677
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v11    # "mPersonaService":Lcom/android/server/pm/PersonaManagerService;
    .local v43, "mPersonaService":Lcom/android/server/pm/PersonaManagerService;
    :goto_20e
    const/4 v1, 0x1

    .line 1679
    .local v1, "enabledContainer":Z
    const/4 v9, 0x1

    if-ne v9, v1, :cond_243

    .line 1680
    :try_start_212
    const-string v9, "SystemServer"

    const-string v11, "KnoxMUMContainerPolicy Service"

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    new-instance v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-direct {v9, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;-><init>(Landroid/content/Context;)V

    move-object v12, v9

    .line 1682
    const-string/jumbo v9, "mum_container_policy"

    invoke-static {v9, v12}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_225
    .catchall {:try_start_212 .. :try_end_225} :catchall_226

    goto :goto_243

    .line 1684
    :catchall_226
    move-exception v0

    move-object v9, v0

    .line 1685
    .local v9, "e":Ljava/lang/Throwable;
    :try_start_228
    const-string v11, "SystemServer"

    const-string v13, "Failure starting KnoxMUMContainerPolicy Service"

    invoke-static {v11, v13, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22f
    .catchall {:try_start_228 .. :try_end_22f} :catchall_232

    move-object/from16 v45, v12

    goto :goto_245

    .line 2020
    .end local v1    # "enabledContainer":Z
    .end local v9    # "e":Ljava/lang/Throwable;
    .end local v42    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_232
    move-exception v0

    move-object v9, v2

    move-object/from16 v47, v3

    move-object/from16 v74, v4

    move-object/from16 v48, v5

    move-object v1, v6

    move-object v3, v14

    move-object/from16 v11, v43

    move-object/from16 v2, v44

    move-object v4, v0

    goto/16 :goto_1d61

    .line 1686
    .restart local v1    # "enabledContainer":Z
    .restart local v42    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_243
    :goto_243
    move-object/from16 v45, v12

    .line 1687
    .end local v12    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .local v45, "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    :goto_245
    :try_start_245
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1691
    invoke-direct {v7, v4, v6}, Lcom/android/server/SystemServer;->startRCPService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1695
    invoke-direct {v7, v4, v6}, Lcom/android/server/SystemServer;->startDualAppManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1697
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iput-object v9, v7, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 1700
    const-string v9, "StartAccountManagerService"

    invoke-virtual {v6, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1701
    iget-object v9, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v11, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v9, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1702
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1704
    const-string v9, "StartContentService"

    invoke-virtual {v6, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1705
    iget-object v9, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v11, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v9, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1706
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1708
    const-string v9, "InstallSystemProviders"

    invoke-virtual {v6, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1709
    iget-object v9, v7, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 1711
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->reset()V

    .line 1712
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1715
    const-string v9, "SatsService: Secure AT Service"

    invoke-virtual {v6, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_287
    .catchall {:try_start_245 .. :try_end_287} :catchall_1d22

    .line 1717
    :try_start_287
    const-class v9, Lcom/android/server/SatsService;

    new-instance v11, Lcom/android/server/SatsService;

    invoke-direct {v11, v4}, Lcom/android/server/SatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v9, v11}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_291
    .catchall {:try_start_287 .. :try_end_291} :catchall_292

    .line 1720
    goto :goto_29b

    .line 1718
    :catchall_292
    move-exception v0

    move-object v9, v0

    .line 1719
    .restart local v9    # "e":Ljava/lang/Throwable;
    :try_start_294
    const-string v11, "SystemServer"

    const-string v12, "Failed to add SatsService."

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    .end local v9    # "e":Ljava/lang/Throwable;
    :goto_29b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1727
    const-string v9, "StartDropBoxManager"

    invoke-virtual {v6, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1728
    iget-object v9, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v9, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1729
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_2ad
    .catchall {:try_start_294 .. :try_end_2ad} :catchall_1d22

    .line 1734
    :try_start_2ad
    const-string v9, "SSRM Service"

    invoke-virtual {v6, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1735
    new-instance v9, Ldalvik/system/PathClassLoader;

    const-string v11, "/system/framework/ssrm.jar"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-direct {v9, v11, v12}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1736
    .local v9, "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    const-string v11, "com.android.server.ssrm.CustomFrequencyManagerService$Lifecycle"

    invoke-virtual {v9, v11}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 1737
    .local v11, "cfmsClass":Ljava/lang/Class;
    iget-object v12, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v12, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1738
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_2cf
    .catch Ljava/lang/Exception; {:try_start_2ad .. :try_end_2cf} :catch_2e3
    .catchall {:try_start_2ad .. :try_end_2cf} :catchall_2d0

    .line 1742
    .end local v9    # "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    .end local v11    # "cfmsClass":Ljava/lang/Class;
    goto :goto_2f0

    .line 2020
    .end local v1    # "enabledContainer":Z
    .end local v42    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_2d0
    move-exception v0

    move-object v9, v2

    move-object/from16 v47, v3

    move-object/from16 v74, v4

    move-object/from16 v48, v5

    move-object v1, v6

    move-object v3, v14

    move-object/from16 v11, v43

    move-object/from16 v2, v44

    move-object/from16 v12, v45

    move-object v4, v0

    goto/16 :goto_1d61

    .line 1739
    .restart local v1    # "enabledContainer":Z
    .restart local v42    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catch_2e3
    move-exception v0

    move-object v9, v0

    .line 1740
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2e5
    const-string v11, "SystemServer"

    const-string/jumbo v12, "ssrm.jar not found"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1760
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_2f0
    const-string v9, "SystemServer"

    const-string v11, "Hqm Service"

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f7
    .catchall {:try_start_2e5 .. :try_end_2f7} :catchall_1d22

    .line 1762
    :try_start_2f7
    new-instance v9, Ldalvik/system/PathClassLoader;

    const-string v11, "/system/framework/hqm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-direct {v9, v11, v12}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1763
    .local v9, "HqmServiceClassLoader":Ldalvik/system/PathClassLoader;
    const-string v11, "com.samsung.android.hqm.HqmManagerService"

    invoke-virtual {v9, v11}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 1764
    .local v11, "HqmServiceClass":Ljava/lang/Class;
    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Class;

    const-class v12, Landroid/content/Context;

    const/16 v34, 0x0

    aput-object v12, v13, v34

    invoke-virtual {v11, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12
    :try_end_315
    .catch Ljava/lang/Exception; {:try_start_2f7 .. :try_end_315} :catch_32b
    .catchall {:try_start_2f7 .. :try_end_315} :catchall_2d0

    .line 1765
    .local v12, "HqmServiceConstructor":Ljava/lang/reflect/Constructor;
    move/from16 v46, v1

    const/4 v13, 0x1

    .end local v1    # "enabledContainer":Z
    .local v46, "enabledContainer":Z
    :try_start_318
    new-array v1, v13, [Ljava/lang/Object;

    aput-object v4, v1, v34

    invoke-virtual {v12, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 1766
    .local v1, "HqmService":Landroid/os/IBinder;
    const-string v13, "HqmManagerService"

    invoke-static {v13, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_327
    .catch Ljava/lang/Exception; {:try_start_318 .. :try_end_327} :catch_328
    .catchall {:try_start_318 .. :try_end_327} :catchall_2d0

    .line 1770
    .end local v1    # "HqmService":Landroid/os/IBinder;
    .end local v9    # "HqmServiceClassLoader":Ldalvik/system/PathClassLoader;
    .end local v11    # "HqmServiceClass":Ljava/lang/Class;
    .end local v12    # "HqmServiceConstructor":Ljava/lang/reflect/Constructor;
    goto :goto_33a

    .line 1767
    :catch_328
    move-exception v0

    move-object v1, v0

    goto :goto_32f

    .end local v46    # "enabledContainer":Z
    .local v1, "enabledContainer":Z
    :catch_32b
    move-exception v0

    move/from16 v46, v1

    move-object v1, v0

    .line 1768
    .local v1, "e":Ljava/lang/Exception;
    .restart local v46    # "enabledContainer":Z
    :goto_32f
    :try_start_32f
    const-string v9, "SystemServer"

    const-string/jumbo v11, "hqm.jar not found"

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1776
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_33a
    sget-boolean v1, Lcom/samsung/android/sepunion/UnionUtils;->FEATURE_ENABLED:Z
    :try_end_33c
    .catchall {:try_start_32f .. :try_end_33c} :catchall_1d22

    if-eqz v1, :cond_34d

    .line 1777
    :try_start_33e
    const-string v1, "SemUnionMainService"

    invoke-virtual {v6, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1778
    iget-object v1, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.android.server.sepunion.SemUnionMainService"

    invoke-virtual {v1, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1779
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_34d
    .catchall {:try_start_33e .. :try_end_34d} :catchall_2d0

    .line 1783
    :cond_34d
    :try_start_34d
    const-string v1, "StartVibratorService"

    invoke-virtual {v6, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1784
    new-instance v1, Lcom/android/server/VibratorService;

    invoke-direct {v1, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_357
    .catchall {:try_start_34d .. :try_end_357} :catchall_1d22

    .line 1785
    .end local v29    # "vibrator":Lcom/android/server/VibratorService;
    .local v1, "vibrator":Lcom/android/server/VibratorService;
    :try_start_357
    const-string/jumbo v9, "vibrator"

    invoke-static {v9, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1786
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1788
    const-string v9, "StartDynamicSystemService"

    invoke-virtual {v6, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1789
    new-instance v9, Lcom/android/server/DynamicSystemService;

    invoke-direct {v9, v4}, Lcom/android/server/DynamicSystemService;-><init>(Landroid/content/Context;)V
    :try_end_36a
    .catchall {:try_start_357 .. :try_end_36a} :catchall_1d09

    move-object v13, v9

    .line 1790
    .end local v44    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v13, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    :try_start_36b
    const-string v9, "dynamic_system"

    invoke-static {v9, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1791
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_373
    .catchall {:try_start_36b .. :try_end_373} :catchall_1ced

    .line 1793
    if-nez v36, :cond_39f

    .line 1794
    :try_start_375
    const-string v9, "StartConsumerIrService"

    invoke-virtual {v6, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1795
    new-instance v9, Lcom/android/server/ConsumerIrService;

    invoke-direct {v9, v4}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    move-object v10, v9

    .line 1796
    const-string v9, "consumer_ir"

    invoke-static {v9, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1797
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_388
    .catchall {:try_start_375 .. :try_end_388} :catchall_38b

    move-object/from16 v29, v10

    goto :goto_3a1

    .line 2020
    .end local v42    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    .end local v46    # "enabledContainer":Z
    :catchall_38b
    move-exception v0

    move-object/from16 v29, v1

    move-object v9, v2

    move-object/from16 v47, v3

    move-object/from16 v74, v4

    move-object/from16 v48, v5

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move-object/from16 v11, v43

    move-object/from16 v12, v45

    move-object v4, v0

    goto/16 :goto_1d61

    .line 1793
    .restart local v42    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    .restart local v46    # "enabledContainer":Z
    :cond_39f
    move-object/from16 v29, v10

    .line 1800
    .end local v10    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v29, "consumerIr":Lcom/android/server/ConsumerIrService;
    :goto_3a1
    :try_start_3a1
    const-string v9, "StartAlarmManagerService"

    invoke-virtual {v6, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1801
    iget-object v9, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v10, Lcom/android/server/AlarmManagerService;

    invoke-direct {v10, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1802
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1804
    const-string v9, "StartInputManagerService"

    invoke-virtual {v6, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1805
    new-instance v9, Lcom/android/server/input/InputManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3bd
    .catchall {:try_start_3a1 .. :try_end_3bd} :catchall_1ccf

    move-object v12, v9

    .line 1806
    .end local v8    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v12, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_3be
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1809
    const-string v8, "SemPrivilegeManagerService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1810
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.android.server.privilege.SemPrivilegeManagerService"

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1811
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_3d0
    .catchall {:try_start_3be .. :try_end_3d0} :catchall_1cad

    .line 1816
    :try_start_3d0
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.feature.sensorhub"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8
    :try_end_3da
    .catch Ljava/lang/Exception; {:try_start_3d0 .. :try_end_3da} :catch_46b
    .catchall {:try_start_3d0 .. :try_end_3da} :catchall_454

    if-nez v8, :cond_40d

    .line 1817
    :try_start_3dc
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.feature.scontext_lite"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8
    :try_end_3e6
    .catch Ljava/lang/Exception; {:try_start_3dc .. :try_end_3e6} :catch_405
    .catchall {:try_start_3dc .. :try_end_3e6} :catchall_3ee

    if-eqz v8, :cond_3e9

    goto :goto_40d

    :cond_3e9
    move-object/from16 v47, v3

    move-object/from16 v48, v5

    goto :goto_450

    .line 2020
    .end local v42    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    .end local v46    # "enabledContainer":Z
    :catchall_3ee
    move-exception v0

    move-object v9, v2

    move-object/from16 v47, v3

    move-object/from16 v74, v4

    move-object/from16 v48, v5

    move-object v8, v12

    move-object v2, v13

    move-object v3, v14

    move-object/from16 v10, v29

    move-object/from16 v11, v43

    move-object/from16 v12, v45

    move-object v4, v0

    move-object/from16 v29, v1

    move-object v1, v6

    goto/16 :goto_1d61

    .line 1826
    .restart local v42    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    .restart local v46    # "enabledContainer":Z
    :catch_405
    move-exception v0

    move-object/from16 v47, v3

    move-object/from16 v48, v5

    move-object v3, v0

    goto/16 :goto_471

    .line 1818
    :cond_40d
    :goto_40d
    :try_start_40d
    const-string v8, "StartSemContextService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1819
    const-string v8, "SystemServer"

    const-string v9, "SemContextService Service"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    new-instance v8, Ldalvik/system/PathClassLoader;

    const-string v9, "/system/framework/semcontextservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1821
    .local v8, "scontextClassLoader":Ldalvik/system/PathClassLoader;
    const-string v9, "com.samsung.android.hardware.context.SemContextService"

    invoke-virtual {v8, v9}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 1822
    .local v9, "class_SContextService":Ljava/lang/Class;
    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    const/16 v34, 0x0

    aput-object v10, v11, v34

    invoke-virtual {v9, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    .line 1823
    .local v10, "constructor_SContextService":Ljava/lang/reflect/Constructor;
    const-string/jumbo v11, "scontext"
    :try_end_43a
    .catch Ljava/lang/Exception; {:try_start_40d .. :try_end_43a} :catch_46b
    .catchall {:try_start_40d .. :try_end_43a} :catchall_454

    move-object/from16 v47, v3

    move-object/from16 v48, v5

    const/4 v3, 0x1

    .end local v3    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v5    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v47, "storageManager":Landroid/os/storage/IStorageManager;
    .local v48, "networkManagement":Lcom/android/server/NetworkManagementService;
    :try_start_43f
    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v5, v3

    invoke-virtual {v10, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v11, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1824
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_450
    .catch Ljava/lang/Exception; {:try_start_43f .. :try_end_450} :catch_451
    .catchall {:try_start_43f .. :try_end_450} :catchall_4f7

    .line 1828
    .end local v8    # "scontextClassLoader":Ldalvik/system/PathClassLoader;
    .end local v9    # "class_SContextService":Ljava/lang/Class;
    .end local v10    # "constructor_SContextService":Ljava/lang/reflect/Constructor;
    :goto_450
    goto :goto_478

    .line 1826
    :catch_451
    move-exception v0

    move-object v3, v0

    goto :goto_471

    .line 2020
    .end local v42    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    .end local v46    # "enabledContainer":Z
    .end local v47    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v48    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v3    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v5    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :catchall_454
    move-exception v0

    move-object/from16 v47, v3

    move-object/from16 v48, v5

    move-object v9, v2

    move-object/from16 v74, v4

    move-object v8, v12

    move-object v2, v13

    move-object v3, v14

    move-object/from16 v10, v29

    move-object/from16 v11, v43

    move-object/from16 v12, v45

    move-object v4, v0

    move-object/from16 v29, v1

    move-object v1, v6

    .end local v3    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v5    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v47    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v48    # "networkManagement":Lcom/android/server/NetworkManagementService;
    goto/16 :goto_1d61

    .line 1826
    .end local v47    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v48    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v3    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v5    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v42    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    .restart local v46    # "enabledContainer":Z
    :catch_46b
    move-exception v0

    move-object/from16 v47, v3

    move-object/from16 v48, v5

    move-object v3, v0

    .line 1827
    .end local v5    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v47    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v48    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_471
    :try_start_471
    const-string v5, "SystemServer"

    const-string v8, "Failure starting SemContextService"

    invoke-static {v5, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1832
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_478
    const-string v3, "0"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string v8, "SEC_FLOATING_FEATURE_SYSTEM_CONFIG_HCM_AI_POWER_SAVING_LEVEL"

    invoke-virtual {v5, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_488
    .catchall {:try_start_471 .. :try_end_488} :catchall_1c8f

    if-nez v3, :cond_50a

    .line 1834
    :try_start_48a
    const-string v3, "HcmManagerService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_48f
    .catchall {:try_start_48a .. :try_end_48f} :catchall_4f7

    .line 1836
    :try_start_48f
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "adaptive_power_saving_setting"

    const/4 v8, 0x0

    invoke-static {v3, v5, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1838
    .local v3, "ApmSwitch":I
    const-string v5, "SystemServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HcmManagerService ApmSwitch = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    new-instance v5, Ldalvik/system/PathClassLoader;

    const-string v8, "/system/framework/hcm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1840
    .local v5, "HcmServiceClassLoader":Ldalvik/system/PathClassLoader;
    const-string v8, "com.samsung.android.hcm.HcmManagerService"

    invoke-virtual {v5, v8}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 1842
    .local v8, "HcmServiceClass":Ljava/lang/Class;
    if-lez v3, :cond_4e1

    .line 1843
    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    invoke-virtual {v8, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    .line 1844
    .local v9, "HcmServiceConstructor":Ljava/lang/reflect/Constructor;
    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v11, v10

    invoke-virtual {v9, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/IBinder;

    .line 1845
    .local v10, "HcmService":Landroid/os/IBinder;
    const-string v11, "HcmManagerService"

    invoke-static {v11, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1846
    .end local v9    # "HcmServiceConstructor":Ljava/lang/reflect/Constructor;
    .end local v10    # "HcmService":Landroid/os/IBinder;
    goto :goto_4e6

    .line 1847
    :cond_4e1
    const-string v9, "HcmManagerService"

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_4e6
    .catch Ljava/lang/Exception; {:try_start_48f .. :try_end_4e6} :catch_4e7
    .catchall {:try_start_48f .. :try_end_4e6} :catchall_4f7

    .line 1852
    .end local v3    # "ApmSwitch":I
    .end local v5    # "HcmServiceClassLoader":Ldalvik/system/PathClassLoader;
    .end local v8    # "HcmServiceClass":Ljava/lang/Class;
    :goto_4e6
    goto :goto_4f3

    .line 1849
    :catch_4e7
    move-exception v0

    move-object v3, v0

    .line 1850
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4e9
    const-string v5, "SystemServer"

    const-string v8, "Failed to add HcmManagerService."

    invoke-static {v5, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1853
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_4f3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_4f6
    .catchall {:try_start_4e9 .. :try_end_4f6} :catchall_4f7

    goto :goto_50a

    .line 2020
    .end local v42    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    .end local v46    # "enabledContainer":Z
    :catchall_4f7
    move-exception v0

    move-object v9, v2

    move-object/from16 v74, v4

    move-object v8, v12

    move-object v2, v13

    move-object v3, v14

    move-object/from16 v10, v29

    move-object/from16 v11, v43

    move-object/from16 v12, v45

    move-object v4, v0

    move-object/from16 v29, v1

    move-object v1, v6

    goto/16 :goto_1d61

    .line 1858
    .restart local v42    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    .restart local v46    # "enabledContainer":Z
    :cond_50a
    :goto_50a
    :try_start_50a
    const-string v3, "StartMotionRecognitionService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_50f
    .catchall {:try_start_50a .. :try_end_50f} :catchall_1c8f

    .line 1860
    :try_start_50f
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1861
    .local v3, "pM":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_567

    .line 1862
    const-string v5, "SystemServer"

    const-string v8, "PackageManager is not null!!"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    const-string v5, "com.sec.feature.motionrecognition_service"

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_563

    .line 1864
    new-instance v5, Ldalvik/system/PathClassLoader;

    const-string v8, "/system/framework/motionrecognitionservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1865
    .local v5, "motionClassLoader":Ldalvik/system/PathClassLoader;
    const-string v8, "com.samsung.android.gesture.MotionRecognitionService"

    invoke-virtual {v5, v8}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8
    :try_end_535
    .catch Ljava/lang/Exception; {:try_start_50f .. :try_end_535} :catch_56b
    .catchall {:try_start_50f .. :try_end_535} :catchall_4f7

    .line 1866
    .local v8, "class_MotionRecognitionService":Ljava/lang/Class;
    const/4 v9, 0x1

    :try_start_536
    new-array v10, v9, [Ljava/lang/Class;
    :try_end_538
    .catch Ljava/lang/Exception; {:try_start_536 .. :try_end_538} :catch_560
    .catchall {:try_start_536 .. :try_end_538} :catchall_4f7

    :try_start_538
    const-class v9, Landroid/content/Context;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    invoke-virtual {v8, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    .line 1867
    .local v9, "constructor_MotionRecognitionService":Ljava/lang/reflect/Constructor;
    const-string/jumbo v10, "motion_recognition"
    :try_end_544
    .catch Ljava/lang/Exception; {:try_start_538 .. :try_end_544} :catch_56b
    .catchall {:try_start_538 .. :try_end_544} :catchall_4f7

    move-object/from16 v40, v3

    const/4 v11, 0x1

    .end local v3    # "pM":Landroid/content/pm/PackageManager;
    .local v40, "pM":Landroid/content/pm/PackageManager;
    :try_start_547
    new-array v3, v11, [Ljava/lang/Object;

    const/16 v34, 0x0

    aput-object v4, v3, v34

    invoke-virtual {v9, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v10, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1868
    const-string v3, "SystemServer"

    const-string v10, "MotionRecognitionService Service!"

    invoke-static {v3, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55d
    .catch Ljava/lang/Exception; {:try_start_547 .. :try_end_55d} :catch_55e
    .catchall {:try_start_547 .. :try_end_55d} :catchall_4f7

    goto :goto_56a

    .line 1871
    .end local v5    # "motionClassLoader":Ldalvik/system/PathClassLoader;
    .end local v8    # "class_MotionRecognitionService":Ljava/lang/Class;
    .end local v9    # "constructor_MotionRecognitionService":Ljava/lang/reflect/Constructor;
    .end local v40    # "pM":Landroid/content/pm/PackageManager;
    :catch_55e
    move-exception v0

    goto :goto_56d

    :catch_560
    move-exception v0

    move v11, v9

    goto :goto_56d

    .line 1863
    .restart local v3    # "pM":Landroid/content/pm/PackageManager;
    :cond_563
    move-object/from16 v40, v3

    const/4 v11, 0x1

    .end local v3    # "pM":Landroid/content/pm/PackageManager;
    .restart local v40    # "pM":Landroid/content/pm/PackageManager;
    goto :goto_56a

    .line 1861
    .end local v40    # "pM":Landroid/content/pm/PackageManager;
    .restart local v3    # "pM":Landroid/content/pm/PackageManager;
    :cond_567
    move-object/from16 v40, v3

    const/4 v11, 0x1

    .line 1873
    .end local v3    # "pM":Landroid/content/pm/PackageManager;
    :goto_56a
    goto :goto_575

    .line 1871
    :catch_56b
    move-exception v0

    const/4 v11, 0x1

    :goto_56d
    move-object v3, v0

    .line 1872
    .local v3, "e":Ljava/lang/Exception;
    :try_start_56e
    const-string v5, "SystemServer"

    const-string v8, "Failure starting MotionRecognitionService"

    invoke-static {v5, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1874
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_575
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1878
    const-string v3, "StartWindowManagerService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1879
    const-string v3, "SystemServer"

    const-string v5, "!@Boot_EBS_F: Start WindowManagerService"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    const-string v5, "StartSensorService"

    invoke-static {v3, v5}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 1882
    const/4 v3, 0x0

    iput-object v3, v7, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 1883
    iget-boolean v5, v7, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v5, :cond_594

    move v10, v11

    goto :goto_595

    :cond_594
    const/4 v10, 0x0

    :goto_595
    iget-boolean v5, v7, Lcom/android/server/SystemServer;->mOnlyCore:Z

    new-instance v40, Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct/range {v40 .. v40}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    iget-object v8, v7, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v8, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;
    :try_end_5a0
    .catchall {:try_start_56e .. :try_end_5a0} :catchall_1c8f

    move-object v8, v4

    move-object/from16 v44, v9

    move-object v9, v12

    move/from16 v49, v11

    move v11, v5

    move-object v5, v12

    .end local v12    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v5, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v12, v40

    move-object/from16 v40, v13

    move/from16 v3, v49

    .end local v13    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v40, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    move-object/from16 v13, v44

    :try_start_5b0
    invoke-static/range {v8 .. v13}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v8
    :try_end_5b4
    .catchall {:try_start_5b0 .. :try_end_5b4} :catchall_1c73

    move-object v13, v8

    .line 1885
    .end local v19    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v13, "wm":Lcom/android/server/wm/WindowManagerService;
    :try_start_5b5
    const-string/jumbo v8, "window"

    const/16 v9, 0x11

    const/4 v10, 0x0

    invoke-static {v8, v13, v10, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1887
    const-string/jumbo v8, "input"

    invoke-static {v8, v5, v10, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1889
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1891
    const-string v8, "SetWindowManagerService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1892
    iget-object v8, v7, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, v13}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1893
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1895
    const-string v8, "WindowManagerServiceOnInitReady"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1896
    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->onInitReady()V

    .line 1897
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1902
    sget-object v8, Lcom/android/server/-$$Lambda$SystemServer$NlJmG18aPrQduhRqASIdcn7G0z8;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$NlJmG18aPrQduhRqASIdcn7G0z8;

    const-string v9, "StartHidlServices"

    invoke-static {v8, v9}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_5e6
    .catchall {:try_start_5b5 .. :try_end_5e6} :catchall_1c53

    .line 1909
    if-nez v36, :cond_610

    if-eqz v39, :cond_610

    .line 1910
    :try_start_5ea
    const-string v8, "StartVrManagerService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1911
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1912
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_5f9
    .catchall {:try_start_5ea .. :try_end_5f9} :catchall_5fa

    goto :goto_610

    .line 2020
    .end local v42    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    .end local v46    # "enabledContainer":Z
    :catchall_5fa
    move-exception v0

    move-object v9, v2

    move-object/from16 v74, v4

    move-object v8, v5

    move-object/from16 v19, v13

    move-object v3, v14

    move-object/from16 v10, v29

    move-object/from16 v2, v40

    move-object/from16 v11, v43

    move-object/from16 v12, v45

    move-object v4, v0

    move-object/from16 v29, v1

    move-object v1, v6

    goto/16 :goto_1d61

    .line 1916
    .restart local v42    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    .restart local v46    # "enabledContainer":Z
    :cond_610
    :goto_610
    :try_start_610
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->LOW_PERSISTENCE_ENABLED:Z
    :try_end_612
    .catchall {:try_start_610 .. :try_end_612} :catchall_1c53

    if-eqz v8, :cond_623

    .line 1917
    :try_start_614
    const-string v8, "StartGearVrManagerService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1918
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1919
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_623
    .catchall {:try_start_614 .. :try_end_623} :catchall_5fa

    .line 1923
    :cond_623
    :try_start_623
    const-string v8, "StartInputManager"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1924
    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->getInputManagerCallback()Lcom/android/server/wm/InputManagerCallback;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 1925
    invoke-virtual {v5}, Lcom/android/server/input/InputManagerService;->start()V

    .line 1926
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_635
    .catchall {:try_start_623 .. :try_end_635} :catchall_1c53

    .line 1944
    :try_start_635
    const-string v8, "SystemServer"

    const-string v9, "VoIPInterfaceManager Service"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    const-string/jumbo v8, "voip"

    const-class v9, Lcom/android/server/VoIPInterfaceManager;

    invoke-static {v8, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_644
    .catchall {:try_start_635 .. :try_end_644} :catchall_645

    .line 1948
    goto :goto_64e

    .line 1946
    :catchall_645
    move-exception v0

    move-object v8, v0

    .line 1947
    .local v8, "e":Ljava/lang/Throwable;
    :try_start_647
    const-string v9, "SystemServer"

    const-string v10, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    .end local v8    # "e":Ljava/lang/Throwable;
    :goto_64e
    const-string v8, "DisplayManagerWindowManagerAndInputReady"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1952
    iget-object v8, v7, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v8}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 1953
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1955
    iget v8, v7, Lcom/android/server/SystemServer;->mFactoryTestMode:I
    :try_end_65d
    .catchall {:try_start_647 .. :try_end_65d} :catchall_1c53

    if-ne v8, v3, :cond_667

    .line 1956
    :try_start_65f
    const-string v8, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_666
    .catchall {:try_start_65f .. :try_end_666} :catchall_5fa

    goto :goto_694

    .line 1957
    :cond_667
    :try_start_667
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "android.hardware.bluetooth"

    .line 1958
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8
    :try_end_671
    .catchall {:try_start_667 .. :try_end_671} :catchall_1c53

    if-nez v8, :cond_67b

    .line 1959
    :try_start_673
    const-string v8, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_694

    .line 1960
    :cond_67b
    if-eqz v37, :cond_685

    .line 1961
    const-string v8, "SystemServer"

    const-string v9, "Bluetooth Service disabled by config"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_684
    .catchall {:try_start_673 .. :try_end_684} :catchall_5fa

    goto :goto_694

    .line 1963
    :cond_685
    :try_start_685
    const-string v8, "StartBluetoothService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1964
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/BluetoothService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1965
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1970
    :goto_694
    const-string v8, "Bluetooth Secure Mode Manager Service"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1972
    const-string v8, "SystemServer"

    const-string v9, "Bluetooth Secure Mode Manager Service"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    const-string v8, "bluetooth_secure_mode_manager"

    const-class v9, Landroid/app/BluetoothSecureManagerService;

    invoke-static {v8, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1976
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1996
    const-string v8, "IpConnectivityMetrics"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1997
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1998
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2000
    const-string v8, "NetworkWatchlistService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2001
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2002
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2004
    const-string v8, "PinnerService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2005
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/PinnerService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2006
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2008
    const-string v8, "IorapForwardingService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2009
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2010
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2012
    const-string v8, "SignedConfigService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2013
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/signedconfig/SignedConfigService;->registerUpdateReceiver(Landroid/content/Context;)V

    .line 2014
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2016
    const-string v8, "AppIntegrityService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2017
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/integrity/AppIntegrityManagerService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2018
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_702
    .catchall {:try_start_685 .. :try_end_702} :catchall_1c53

    .line 2024
    .end local v42    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    .end local v46    # "enabledContainer":Z
    nop

    .line 2028
    const-string v8, "detectSafeMode"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2029
    const-string v8, "SystemServer"

    const-string v9, "!@Boot_EBS_D: detectSafeMode"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v12

    .line 2031
    .local v12, "safeMode":Z
    if-eqz v12, :cond_71e

    .line 2036
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v8, v9, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2039
    :cond_71e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2042
    iput-boolean v12, v7, Lcom/android/server/SystemServer;->safeModeValueForTheme:Z

    .line 2045
    const/4 v8, 0x0

    .line 2046
    .local v8, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v19, 0x0

    .line 2048
    .local v19, "notification":Landroid/app/INotificationManager;
    const/16 v42, 0x0

    .line 2050
    .local v42, "sLocation":Landroid/os/IBinder;
    const/16 v44, 0x0

    .line 2051
    .local v44, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/4 v9, 0x0

    .line 2052
    .local v9, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v46, 0x0

    .line 2055
    .local v46, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/4 v10, 0x0

    .line 2059
    .local v10, "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    iget v11, v7, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eq v11, v3, :cond_765

    .line 2060
    const-string v11, "StartInputMethodManagerLifecycle"

    invoke-virtual {v6, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2061
    sget-boolean v11, Lcom/android/server/inputmethod/InputMethodSystemProperty;->MULTI_CLIENT_IME_ENABLED:Z

    if-eqz v11, :cond_743

    .line 2062
    iget-object v11, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;

    invoke-virtual {v11, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto :goto_74a

    .line 2065
    :cond_743
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    invoke-virtual {v3, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2067
    :goto_74a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2069
    const-string v3, "StartAccessibilityManagerService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2071
    :try_start_752
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v11, "com.android.server.accessibility.AccessibilityManagerService$Lifecycle"

    invoke-virtual {v3, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_759
    .catchall {:try_start_752 .. :try_end_759} :catchall_75a

    .line 2074
    goto :goto_762

    .line 2072
    :catchall_75a
    move-exception v0

    move-object v3, v0

    .line 2073
    .local v3, "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "starting Accessibility Manager"

    invoke-direct {v7, v11, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2075
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_762
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2078
    :cond_765
    const-string v3, "MakeDisplayReady"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2080
    :try_start_76a
    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_76d
    .catchall {:try_start_76a .. :try_end_76d} :catchall_76e

    .line 2083
    goto :goto_776

    .line 2081
    :catchall_76e
    move-exception v0

    move-object v3, v0

    .line 2082
    .restart local v3    # "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "making display ready"

    invoke-direct {v7, v11, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2084
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_776
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2088
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v11, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    invoke-virtual {v3, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_7a7

    .line 2089
    const-string v3, "Add SEM_FM_RADIO_SERVICE"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2091
    :try_start_78e
    const-string v3, "FMPlayer"

    const-class v11, Lcom/android/server/FMRadioService;

    invoke-static {v3, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V

    .line 2092
    const-string v3, "SystemServer"

    const-string v11, "FMRadio service added.."

    invoke-static {v3, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79c
    .catchall {:try_start_78e .. :try_end_79c} :catchall_79d

    .line 2095
    goto :goto_7a4

    .line 2093
    :catchall_79d
    move-exception v0

    move-object v3, v0

    .line 2094
    .restart local v3    # "e":Ljava/lang/Throwable;
    const-string v11, "Failure starting FM Radio Service"

    invoke-direct {v7, v11, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2096
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_7a4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2100
    :cond_7a7
    const-string v3, "GameManagerService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2102
    :try_start_7ac
    new-instance v3, Ldalvik/system/PathClassLoader;

    const-string v11, "/system/framework/gamemanager.jar"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v51
    :try_end_7b4
    .catchall {:try_start_7ac .. :try_end_7b4} :catchall_7d6

    move-object/from16 v52, v8

    .end local v8    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v52, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_7b6
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v3, v11, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2103
    .local v3, "gamemanagerClassLoader":Ldalvik/system/PathClassLoader;
    const-string v8, "com.samsung.android.game.GameManagerService$Lifecycle"

    invoke-virtual {v3, v8}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 2104
    .local v8, "gamemanagerClass":Ljava/lang/Class;
    iget-object v11, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v11, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2105
    const-string v11, "SystemServer"

    move-object/from16 v51, v3

    .end local v3    # "gamemanagerClassLoader":Ldalvik/system/PathClassLoader;
    .local v51, "gamemanagerClassLoader":Ldalvik/system/PathClassLoader;
    const-string v3, "GameManagerService Started"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d1
    .catchall {:try_start_7b6 .. :try_end_7d1} :catchall_7d3

    .line 2108
    nop

    .end local v8    # "gamemanagerClass":Ljava/lang/Class;
    .end local v51    # "gamemanagerClassLoader":Ldalvik/system/PathClassLoader;
    goto :goto_7e1

    .line 2106
    :catchall_7d3
    move-exception v0

    move-object v3, v0

    goto :goto_7da

    .end local v52    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v8, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catchall_7d6
    move-exception v0

    move-object/from16 v52, v8

    move-object v3, v0

    .line 2107
    .end local v8    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v3, "e":Ljava/lang/Throwable;
    .restart local v52    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_7da
    const-string v8, "SystemServer"

    const-string v11, "Failed to start GameManagerService."

    invoke-static {v8, v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2109
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_7e1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2115
    :try_start_7e4
    const-string v8, "SystemServer"

    const-string v11, "GameSDKService"

    invoke-static {v8, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    new-instance v8, Ldalvik/system/PathClassLoader;

    const-string v11, "/system/framework/gamesdk.jar"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v8, v11, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    move-object v3, v8

    .line 2117
    .local v3, "gamesdkClassLoader":Ldalvik/system/PathClassLoader;
    const-string v8, "com.samsung.android.gamesdk.GameSDKService"

    invoke-virtual {v3, v8}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 2118
    .local v8, "gamesdkClass":Ljava/lang/Class;
    move-object/from16 v51, v3

    const/4 v11, 0x2

    .end local v3    # "gamesdkClassLoader":Ldalvik/system/PathClassLoader;
    .local v51, "gamesdkClassLoader":Ldalvik/system/PathClassLoader;
    new-array v3, v11, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    const/16 v34, 0x0

    aput-object v11, v3, v34

    const-class v11, Landroid/app/IActivityManager;

    const/16 v50, 0x1

    aput-object v11, v3, v50

    invoke-virtual {v8, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 2119
    .local v3, "gamesdkConstructor":Ljava/lang/reflect/Constructor;
    move-object/from16 v54, v8

    const/4 v11, 0x2

    .end local v8    # "gamesdkClass":Ljava/lang/Class;
    .local v54, "gamesdkClass":Ljava/lang/Class;
    new-array v8, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v8, v11

    iget-object v11, v7, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/16 v50, 0x1

    aput-object v11, v8, v50

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/IBinder;

    .line 2120
    .local v8, "gamesdkService":Landroid/os/IBinder;
    const-string/jumbo v11, "gamesdk"

    invoke-static {v11, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2121
    const-string v11, "SystemServer"

    move-object/from16 v55, v3

    .end local v3    # "gamesdkConstructor":Ljava/lang/reflect/Constructor;
    .local v55, "gamesdkConstructor":Ljava/lang/reflect/Constructor;
    const-string v3, "GameSDKService loaded"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_839
    .catchall {:try_start_7e4 .. :try_end_839} :catchall_83b

    .line 2124
    nop

    .end local v8    # "gamesdkService":Landroid/os/IBinder;
    .end local v51    # "gamesdkClassLoader":Ldalvik/system/PathClassLoader;
    .end local v54    # "gamesdkClass":Ljava/lang/Class;
    .end local v55    # "gamesdkConstructor":Ljava/lang/reflect/Constructor;
    goto :goto_844

    .line 2122
    :catchall_83b
    move-exception v0

    move-object v3, v0

    .line 2123
    .local v3, "e":Ljava/lang/Throwable;
    const-string v8, "SystemServer"

    const-string v11, "Failed to add GameSDKService."

    invoke-static {v8, v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2129
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_844
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SYSPERF_JDM_MODEL:Z

    if-nez v3, :cond_8ae

    .line 2131
    :try_start_848
    const-string v3, "SystemServer"

    const-string v8, "PerfSDKService"

    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    const-string v3, "PerfSDKService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2133
    new-instance v3, Ldalvik/system/PathClassLoader;

    const-string v8, "/system/framework/perfsdkservice.jar"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-direct {v3, v8, v11}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2134
    .local v3, "perfsdkClassLoader":Ldalvik/system/PathClassLoader;
    const-string v8, "com.samsung.android.perfsdkservice.PerfSDKService"

    invoke-virtual {v3, v8}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 2135
    .local v8, "perfsdkClass":Ljava/lang/Class;
    move-object/from16 v51, v3

    const/4 v11, 0x2

    .end local v3    # "perfsdkClassLoader":Ldalvik/system/PathClassLoader;
    .local v51, "perfsdkClassLoader":Ldalvik/system/PathClassLoader;
    new-array v3, v11, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    const/16 v34, 0x0

    aput-object v11, v3, v34

    const-class v11, Landroid/app/IActivityManager;

    const/16 v50, 0x1

    aput-object v11, v3, v50

    invoke-virtual {v8, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 2136
    .local v3, "perfsdkConstructor":Ljava/lang/reflect/Constructor;
    move-object/from16 v54, v8

    const/4 v11, 0x2

    .end local v8    # "perfsdkClass":Ljava/lang/Class;
    .local v54, "perfsdkClass":Ljava/lang/Class;
    new-array v8, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v8, v11

    iget-object v11, v7, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/16 v50, 0x1

    aput-object v11, v8, v50

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/IBinder;

    .line 2137
    .local v8, "perfsdkService":Landroid/os/IBinder;
    const-string/jumbo v11, "perfsdkservice"

    invoke-static {v11, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2138
    const-string v11, "SystemServer"

    move-object/from16 v55, v3

    .end local v3    # "perfsdkConstructor":Ljava/lang/reflect/Constructor;
    .local v55, "perfsdkConstructor":Ljava/lang/reflect/Constructor;
    const-string v3, "PerfSDKService loaded"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_8a4
    .catchall {:try_start_848 .. :try_end_8a4} :catchall_8a5

    .line 2142
    .end local v8    # "perfsdkService":Landroid/os/IBinder;
    .end local v51    # "perfsdkClassLoader":Ldalvik/system/PathClassLoader;
    .end local v54    # "perfsdkClass":Ljava/lang/Class;
    .end local v55    # "perfsdkConstructor":Ljava/lang/reflect/Constructor;
    goto :goto_8ae

    .line 2140
    :catchall_8a5
    move-exception v0

    move-object v3, v0

    .line 2141
    .local v3, "e":Ljava/lang/Throwable;
    const-string v8, "SystemServer"

    const-string v11, "Failed to add PerfSDKService."

    invoke-static {v8, v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2147
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_8ae
    :goto_8ae
    const-string v3, "SehCodecSolutionService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2149
    :try_start_8b3
    new-instance v3, Ldalvik/system/PathClassLoader;

    const-string v8, "/system/framework/vendor.samsung.frameworks.codecsolution-service.jar"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-direct {v3, v8, v11}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2150
    .local v3, "pathClassLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v8, "vendor.samsung.frameworks.codecsolution.SehCodecSolutionService"

    invoke-virtual {v3, v8}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 2151
    .local v8, "classSehCodecSolutionService":Ljava/lang/Class;
    if-nez v8, :cond_8d5

    .line 2152
    const-string v11, "SystemServer"

    move-object/from16 v51, v3

    .end local v3    # "pathClassLoader":Ldalvik/system/PathClassLoader;
    .local v51, "pathClassLoader":Ldalvik/system/PathClassLoader;
    const-string v3, "Can\'t load SehCodecSolutionService class"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_915

    .line 2154
    .end local v51    # "pathClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v3    # "pathClassLoader":Ldalvik/system/PathClassLoader;
    :cond_8d5
    move-object/from16 v51, v3

    .end local v3    # "pathClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v51    # "pathClassLoader":Ldalvik/system/PathClassLoader;
    const/4 v3, 0x2

    new-array v11, v3, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/16 v34, 0x0

    aput-object v3, v11, v34

    const-class v3, Landroid/app/IActivityManager;

    const/16 v50, 0x1

    aput-object v3, v11, v50

    invoke-virtual {v8, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 2155
    .local v3, "cons":Ljava/lang/reflect/Constructor;
    move-object/from16 v54, v8

    const/4 v11, 0x2

    .end local v8    # "classSehCodecSolutionService":Ljava/lang/Class;
    .local v54, "classSehCodecSolutionService":Ljava/lang/Class;
    new-array v8, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v8, v11

    iget-object v11, v7, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/16 v50, 0x1

    aput-object v11, v8, v50

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/IBinder;

    .line 2156
    .local v8, "svc":Landroid/os/IBinder;
    const-string/jumbo v11, "vendor.samsung.frameworks.codecsolution.ISehCodecSolution/default"

    invoke-static {v11, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2157
    const-string v11, "SystemServer"

    move-object/from16 v55, v3

    .end local v3    # "cons":Ljava/lang/reflect/Constructor;
    .local v55, "cons":Ljava/lang/reflect/Constructor;
    const-string v3, "SehCodecSolutionService loaded"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    const-string/jumbo v3, "secmm.codecsolution.ready"

    const-string v11, "1"

    invoke-static {v3, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_915
    .catchall {:try_start_8b3 .. :try_end_915} :catchall_916

    .line 2162
    .end local v8    # "svc":Landroid/os/IBinder;
    .end local v51    # "pathClassLoader":Ldalvik/system/PathClassLoader;
    .end local v54    # "classSehCodecSolutionService":Ljava/lang/Class;
    .end local v55    # "cons":Ljava/lang/reflect/Constructor;
    :goto_915
    goto :goto_91f

    .line 2160
    :catchall_916
    move-exception v0

    move-object v3, v0

    .line 2161
    .local v3, "e":Ljava/lang/Throwable;
    const-string v8, "SystemServer"

    const-string v11, "Failed to start SehCodecSolutionService "

    invoke-static {v8, v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2163
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_91f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2168
    const-string/jumbo v3, "sys.config.hardcoder.enable"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_98d

    .line 2170
    :try_start_92f
    const-string v3, "HardcoderService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2171
    new-instance v3, Ldalvik/system/PathClassLoader;

    const-string v8, "/system/framework/HardcoderService.jar"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-direct {v3, v8, v11}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2172
    .local v3, "hardcoderClassLoader":Ldalvik/system/PathClassLoader;
    const-string v8, "com.samsung.android.hardcoder.HardcoderService"

    invoke-virtual {v3, v8}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 2173
    .local v8, "hardcoderClass":Ljava/lang/Class;
    move-object/from16 v51, v3

    const/4 v11, 0x2

    .end local v3    # "hardcoderClassLoader":Ldalvik/system/PathClassLoader;
    .local v51, "hardcoderClassLoader":Ldalvik/system/PathClassLoader;
    new-array v3, v11, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    const/16 v34, 0x0

    aput-object v11, v3, v34

    const-class v11, Landroid/app/IActivityManager;

    const/16 v50, 0x1

    aput-object v11, v3, v50

    invoke-virtual {v8, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 2175
    .local v3, "hardcoderConstructor":Ljava/lang/reflect/Constructor;
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v34, 0x0

    aput-object v4, v11, v34

    move-object/from16 v53, v8

    .end local v8    # "hardcoderClass":Ljava/lang/Class;
    .local v53, "hardcoderClass":Ljava/lang/Class;
    iget-object v8, v7, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/16 v50, 0x1

    aput-object v8, v11, v50

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 2177
    const-string v8, "SystemServer"

    const-string v11, "HardcoderService loaded"

    invoke-static {v8, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_977
    .catchall {:try_start_92f .. :try_end_977} :catchall_979

    .line 2181
    nop

    .end local v3    # "hardcoderConstructor":Ljava/lang/reflect/Constructor;
    .end local v51    # "hardcoderClassLoader":Ldalvik/system/PathClassLoader;
    .end local v53    # "hardcoderClass":Ljava/lang/Class;
    goto :goto_983

    .line 2178
    :catchall_979
    move-exception v0

    move-object v3, v0

    .line 2179
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_97b
    const-string v8, "SystemServer"

    const-string v11, "Failed to add HardcoderService."

    invoke-static {v8, v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_982
    .catchall {:try_start_97b .. :try_end_982} :catchall_987

    .line 2181
    nop

    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_983
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2182
    goto :goto_98d

    .line 2181
    :catchall_987
    move-exception v0

    move-object v3, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2182
    throw v3

    .line 2186
    :cond_98d
    :goto_98d
    iget v3, v7, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v8, 0x1

    if-eq v3, v8, :cond_a02

    .line 2187
    const-string/jumbo v3, "system_init.startmountservice"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "0"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a02

    .line 2188
    const-string v3, "StartStorageManagerService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2194
    :try_start_9a6
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.StorageManagerService$Lifecycle"

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2195
    const-string/jumbo v3, "mount"

    .line 2196
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 2195
    invoke-static {v3}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v3
    :try_end_9b8
    .catchall {:try_start_9a6 .. :try_end_9b8} :catchall_9b9

    .line 2199
    .end local v47    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v3, "storageManager":Landroid/os/storage/IStorageManager;
    goto :goto_9c3

    .line 2197
    .end local v3    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v47    # "storageManager":Landroid/os/storage/IStorageManager;
    :catchall_9b9
    move-exception v0

    move-object v3, v0

    .line 2198
    .local v3, "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "starting StorageManagerService"

    invoke-direct {v7, v8, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v3, v47

    .line 2200
    .end local v47    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v3, "storageManager":Landroid/os/storage/IStorageManager;
    :goto_9c3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2202
    const-string v8, "StartStorageStatsService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2204
    :try_start_9cb
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v11, "com.android.server.usage.StorageStatsService$Lifecycle"

    invoke-virtual {v8, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_9d2
    .catchall {:try_start_9cb .. :try_end_9d2} :catchall_9d3

    .line 2207
    goto :goto_9db

    .line 2205
    :catchall_9d3
    move-exception v0

    move-object v8, v0

    .line 2206
    .local v8, "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "starting StorageStatsService"

    invoke-direct {v7, v11, v8}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2208
    .end local v8    # "e":Ljava/lang/Throwable;
    :goto_9db
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2211
    const-string v8, "DirEncryptSerrvice"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2213
    :try_start_9e3
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v8

    if-eqz v8, :cond_9f3

    .line 2214
    const-string v8, "DirEncryptService"

    new-instance v11, Lcom/android/server/SystemServer$4;

    invoke-direct {v11, v7}, Lcom/android/server/SystemServer$4;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v8, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IServiceCreator;)V
    :try_end_9f3
    .catchall {:try_start_9e3 .. :try_end_9f3} :catchall_9f4

    .line 2228
    :cond_9f3
    goto :goto_9fc

    .line 2226
    :catchall_9f4
    move-exception v0

    move-object v8, v0

    .line 2227
    .restart local v8    # "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "starting DirEncryption service"

    invoke-direct {v7, v11, v8}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2229
    .end local v8    # "e":Ljava/lang/Throwable;
    :goto_9fc
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v51, v3

    goto :goto_a04

    .line 2236
    .end local v3    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v47    # "storageManager":Landroid/os/storage/IStorageManager;
    :cond_a02
    move-object/from16 v51, v47

    .end local v47    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v51, "storageManager":Landroid/os/storage/IStorageManager;
    :goto_a04
    const-string v3, "StartUiModeManager"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2237
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2238
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2240
    iget-boolean v3, v7, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v3, :cond_a54

    .line 2241
    const-string v3, "UpdatePackagesIfNeeded"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2242
    const-string v3, "SystemServer"

    const-string v8, "!@Boot_EBS_D: UpdatePackagesIfNeeded"

    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    :try_start_a23
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    const-string v8, "dexopt"

    invoke-virtual {v3, v8}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 2245
    iget-object v3, v7, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_a31
    .catchall {:try_start_a23 .. :try_end_a31} :catchall_a32

    goto :goto_a3a

    .line 2246
    :catchall_a32
    move-exception v0

    move-object v3, v0

    .line 2247
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_a34
    const-string/jumbo v8, "update packages"

    invoke-direct {v7, v8, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a3a
    .catchall {:try_start_a34 .. :try_end_a3a} :catchall_a48

    .line 2249
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_a3a
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    const-string v8, "dexopt"

    invoke-virtual {v3, v8}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 2250
    nop

    .line 2251
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_a54

    .line 2249
    :catchall_a48
    move-exception v0

    move-object v3, v0

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v8

    const-string v11, "dexopt"

    invoke-virtual {v8, v11}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 2250
    throw v3

    .line 2254
    :cond_a54
    :goto_a54
    const-string v3, "PerformFstrimIfNeeded"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2256
    :try_start_a59
    iget-object v3, v7, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_a5e
    .catchall {:try_start_a59 .. :try_end_a5e} :catchall_a5f

    .line 2259
    goto :goto_a67

    .line 2257
    :catchall_a5f
    move-exception v0

    move-object v3, v0

    .line 2258
    .restart local v3    # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "performing fstrim"

    invoke-direct {v7, v8, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2260
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_a67
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2262
    iget v3, v7, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v8, 0x1

    if-eq v3, v8, :cond_16c0

    .line 2263
    const-string v3, "StartLockSettingsService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2265
    :try_start_a74
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.locksettings.LockSettingsService$Lifecycle"

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2266
    const-string/jumbo v3, "lock_settings"

    .line 2267
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 2266
    invoke-static {v3}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v3
    :try_end_a86
    .catchall {:try_start_a74 .. :try_end_a86} :catchall_a88

    move-object v9, v3

    .line 2270
    goto :goto_a91

    .line 2268
    :catchall_a88
    move-exception v0

    move-object v3, v0

    .line 2269
    .restart local v3    # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "starting LockSettingsService service"

    invoke-direct {v7, v8, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v9

    .line 2271
    .end local v9    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v3, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :goto_a91
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2273
    const-string/jumbo v8, "ro.frp.pst"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    move/from16 v47, v8

    .line 2274
    .local v47, "hasPdb":Z
    const-string/jumbo v8, "ro.gsid.image_running"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_ab1

    const/4 v8, 0x1

    goto :goto_ab2

    :cond_ab1
    const/4 v8, 0x0

    :goto_ab2
    move/from16 v53, v8

    .line 2275
    .local v53, "hasGsi":Z
    if-eqz v47, :cond_ac7

    if-nez v53, :cond_ac7

    .line 2276
    const-string v8, "StartPersistentDataBlock"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2277
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2278
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2281
    :cond_ac7
    const-string v8, "StartTestHarnessMode"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2282
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2283
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2285
    if-nez v47, :cond_ade

    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    move-result v8

    if-eqz v8, :cond_aed

    .line 2287
    :cond_ade
    const-string v8, "StartOemLockService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2288
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/oemlock/OemLockService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2289
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2292
    :cond_aed
    const-string v8, "StartDeviceIdleController"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2293
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.android.server.DeviceIdleController"

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2294
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2298
    const-string v8, "StartDevicePolicyManager"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2299
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2300
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2302
    if-nez v36, :cond_b30

    .line 2303
    const-string v8, "StartStatusBarManagerService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2305
    :try_start_b12
    new-instance v8, Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {v8, v4}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;)V
    :try_end_b17
    .catchall {:try_start_b12 .. :try_end_b17} :catchall_b21

    .line 2306
    .end local v52    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v8, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_b17
    const-string/jumbo v9, "statusbar"

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b1d
    .catchall {:try_start_b17 .. :try_end_b1d} :catchall_b1e

    .line 2309
    goto :goto_b2b

    .line 2307
    :catchall_b1e
    move-exception v0

    move-object v9, v0

    goto :goto_b25

    .end local v8    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v52    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catchall_b21
    move-exception v0

    move-object v9, v0

    move-object/from16 v8, v52

    .line 2308
    .end local v52    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v8    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v9, "e":Ljava/lang/Throwable;
    :goto_b25
    const-string/jumbo v11, "starting StatusBarManagerService"

    invoke-direct {v7, v11, v9}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2310
    .end local v9    # "e":Ljava/lang/Throwable;
    :goto_b2b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v52, v8

    .line 2315
    .end local v8    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v52    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_b30
    const-string v8, "StartEnterpriseDeviceManagerService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2317
    :try_start_b35
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2318
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/SystemServer;->enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .line 2319
    const-string v8, "SystemServer"

    const-string v9, "Enterprise Policymanager service created..."

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b49
    .catchall {:try_start_b35 .. :try_end_b49} :catchall_b4a

    .line 2322
    goto :goto_b52

    .line 2320
    :catchall_b4a
    move-exception v0

    move-object v8, v0

    .line 2321
    .local v8, "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "starting EnterpriseDeviceManagerService"

    invoke-direct {v7, v9, v8}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2323
    .end local v8    # "e":Ljava/lang/Throwable;
    :goto_b52
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2330
    const-string v8, "KnoxCustom Policy"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2332
    :try_start_b5a
    new-instance v8, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;-><init>(Landroid/content/Context;)V

    iput-object v8, v7, Lcom/android/server/SystemServer;->knoxCustomPolicy:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 2333
    const-string/jumbo v9, "knoxcustom"

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2334
    const-string/jumbo v8, "knoxcustom"

    iget-object v9, v7, Lcom/android/server/SystemServer;->knoxCustomPolicy:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v8, v9}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2335
    const-string v8, "SystemServer"

    const-string v9, "KnoxCustom Policy added."

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b76
    .catchall {:try_start_b5a .. :try_end_b76} :catchall_b77

    .line 2338
    goto :goto_b80

    .line 2336
    :catchall_b77
    move-exception v0

    move-object v8, v0

    .line 2337
    .restart local v8    # "e":Ljava/lang/Throwable;
    const-string v9, "SystemServer"

    const-string v11, "Fail KnoxCustom Policy."

    invoke-static {v9, v11, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2339
    .end local v8    # "e":Ljava/lang/Throwable;
    :goto_b80
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2347
    :try_start_b83
    const-string v8, "SystemServer"

    const-string v9, "SdpManagerService"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    const-string v8, "SdpManagerService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2349
    const-string/jumbo v8, "sdp"

    const-class v9, Lcom/android/server/SdpManagerService;

    invoke-static {v8, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V

    .line 2350
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_b9a
    .catchall {:try_start_b83 .. :try_end_b9a} :catchall_b9b

    .line 2353
    goto :goto_ba3

    .line 2351
    :catchall_b9b
    move-exception v0

    move-object v8, v0

    .line 2352
    .restart local v8    # "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "starting SdpManagerService service"

    invoke-direct {v7, v9, v8}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2360
    .end local v8    # "e":Ljava/lang/Throwable;
    :goto_ba3
    :try_start_ba3
    const-string v8, "[KnoxAnalytics] System Service"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2361
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2362
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_bb2
    .catchall {:try_start_ba3 .. :try_end_bb2} :catchall_bb3

    .line 2365
    goto :goto_bbc

    .line 2363
    :catchall_bb3
    move-exception v0

    move-object v8, v0

    .line 2364
    .restart local v8    # "e":Ljava/lang/Throwable;
    const-string v9, "SystemServer"

    const-string v11, "[KnoxAnalytics] Failure starting System Service"

    invoke-static {v9, v11, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2369
    .end local v8    # "e":Ljava/lang/Throwable;
    :goto_bbc
    invoke-direct {v7, v4, v6}, Lcom/android/server/SystemServer;->startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2370
    invoke-direct {v7, v4, v6}, Lcom/android/server/SystemServer;->startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2372
    invoke-direct {v7, v4, v6}, Lcom/android/server/SystemServer;->startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2375
    const v8, 0x10402bf

    .line 2376
    invoke-direct {v7, v4, v8}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_bde

    .line 2377
    const-string v8, "StartAppPredictionService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2378
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.android.server.appprediction.AppPredictionManagerService"

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2379
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_be5

    .line 2381
    :cond_bde
    const-string v8, "SystemServer"

    const-string v9, "AppPredictionService not defined by OEM"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    :goto_be5
    const v8, 0x10402c6

    invoke-direct {v7, v4, v8}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_bfe

    .line 2386
    const-string v8, "StartContentSuggestionsService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2387
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.android.server.contentsuggestions.ContentSuggestionsManagerService"

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2388
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_c05

    .line 2390
    :cond_bfe
    const-string v8, "SystemServer"

    const-string v9, "ContentSuggestionsService not defined by OEM"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    :goto_c05
    :try_start_c05
    const-string v8, "SemClipboardService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2396
    const-string v8, "SystemServer"

    const-string v9, "SemClipboardService"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    new-instance v8, Lcom/android/server/semclipboard/SemClipboardService;

    invoke-direct {v8, v4}, Lcom/android/server/semclipboard/SemClipboardService;-><init>(Landroid/content/Context;)V
    :try_end_c16
    .catchall {:try_start_c05 .. :try_end_c16} :catchall_c27

    .line 2398
    .end local v27    # "semClipboardService":Lcom/android/server/semclipboard/SemClipboardService;
    .local v8, "semClipboardService":Lcom/android/server/semclipboard/SemClipboardService;
    :try_start_c16
    const-string/jumbo v9, "semclipboard"

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2400
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_c1f
    .catchall {:try_start_c16 .. :try_end_c1f} :catchall_c22

    .line 2403
    move-object/from16 v27, v8

    goto :goto_c2f

    .line 2401
    :catchall_c22
    move-exception v0

    move-object/from16 v27, v8

    move-object v8, v0

    goto :goto_c29

    .end local v8    # "semClipboardService":Lcom/android/server/semclipboard/SemClipboardService;
    .restart local v27    # "semClipboardService":Lcom/android/server/semclipboard/SemClipboardService;
    :catchall_c27
    move-exception v0

    move-object v8, v0

    .line 2402
    .local v8, "e":Ljava/lang/Throwable;
    :goto_c29
    const-string/jumbo v9, "starting SemClipboardService"

    invoke-direct {v7, v9, v8}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2406
    .end local v8    # "e":Ljava/lang/Throwable;
    :goto_c2f
    const-string v8, "InitConnectivityModuleConnector"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2408
    :try_start_c34
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/net/ConnectivityModuleConnector;->init(Landroid/content/Context;)V
    :try_end_c3b
    .catchall {:try_start_c34 .. :try_end_c3b} :catchall_c3c

    .line 2411
    goto :goto_c44

    .line 2409
    :catchall_c3c
    move-exception v0

    move-object v8, v0

    .line 2410
    .restart local v8    # "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "initializing ConnectivityModuleConnector"

    invoke-direct {v7, v9, v8}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2412
    .end local v8    # "e":Ljava/lang/Throwable;
    :goto_c44
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2414
    const-string v8, "InitNetworkStackClient"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2416
    :try_start_c4c
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkStackClient;->init()V
    :try_end_c53
    .catchall {:try_start_c4c .. :try_end_c53} :catchall_c54

    .line 2419
    goto :goto_c5c

    .line 2417
    :catchall_c54
    move-exception v0

    move-object v8, v0

    .line 2418
    .restart local v8    # "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "initializing NetworkStackClient"

    invoke-direct {v7, v9, v8}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2420
    .end local v8    # "e":Ljava/lang/Throwable;
    :goto_c5c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2422
    const-string v8, "StartNetworkManagementService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2424
    :try_start_c64
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v8
    :try_end_c68
    .catchall {:try_start_c64 .. :try_end_c68} :catchall_c73

    .line 2425
    .end local v48    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v8, "networkManagement":Lcom/android/server/NetworkManagementService;
    :try_start_c68
    const-string/jumbo v9, "network_management"

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c6e
    .catchall {:try_start_c68 .. :try_end_c6e} :catchall_c70

    .line 2428
    move-object v11, v8

    goto :goto_c7e

    .line 2426
    :catchall_c70
    move-exception v0

    move-object v9, v0

    goto :goto_c77

    .end local v8    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v48    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :catchall_c73
    move-exception v0

    move-object v9, v0

    move-object/from16 v8, v48

    .line 2427
    .end local v48    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v8    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v9    # "e":Ljava/lang/Throwable;
    :goto_c77
    const-string/jumbo v11, "starting NetworkManagement Service"

    invoke-direct {v7, v11, v9}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v11, v8

    .line 2429
    .end local v8    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v9    # "e":Ljava/lang/Throwable;
    .local v11, "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_c7e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2432
    const-string v8, "KnoxVpnService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2435
    :try_start_c86
    iget-object v8, v7, Lcom/android/server/SystemServer;->enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    if-eqz v8, :cond_cab

    .line 2436
    const-string v8, "Adding KnoxVpnEngineService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2437
    const-string v8, "SystemServer"

    const-string v9, "Adding KnoxVpnEngineService"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    new-instance v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-direct {v8, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;-><init>(Landroid/content/Context;)V

    move-object v10, v8

    .line 2439
    const-string/jumbo v8, "knox_vpn_policy"

    invoke-static {v8, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2440
    const-string/jumbo v8, "knox_vpn_policy"

    invoke-static {v8, v10}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2441
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_cab
    .catchall {:try_start_c86 .. :try_end_cab} :catchall_caf

    .line 2445
    :cond_cab
    move-object/from16 v54, v3

    move-object v3, v10

    goto :goto_cbb

    .line 2443
    :catchall_caf
    move-exception v0

    move-object v8, v0

    .line 2444
    .local v8, "e":Ljava/lang/Throwable;
    const-string v9, "SystemServer"

    move-object/from16 v54, v3

    .end local v3    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v54, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const-string v3, "Failure starting KnoxVpnEngineService"

    invoke-static {v9, v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v10

    .line 2447
    .end local v8    # "e":Ljava/lang/Throwable;
    .end local v10    # "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .local v3, "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    :goto_cbb
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2451
    const-string v8, "StartIpSecService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2453
    :try_start_cc3
    invoke-static {v4, v11}, Lcom/android/server/IpSecService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/IpSecService;

    move-result-object v8

    move-object v14, v8

    .line 2454
    const-string/jumbo v8, "ipsec"

    invoke-static {v8, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_cce
    .catchall {:try_start_cc3 .. :try_end_cce} :catchall_ccf

    .line 2457
    goto :goto_cd7

    .line 2455
    :catchall_ccf
    move-exception v0

    move-object v8, v0

    .line 2456
    .restart local v8    # "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "starting IpSec Service"

    invoke-direct {v7, v9, v8}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2458
    .end local v8    # "e":Ljava/lang/Throwable;
    :goto_cd7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2460
    const-string v8, "StartTextServicesManager"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2461
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2462
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2464
    if-nez v30, :cond_cfa

    .line 2465
    const-string v8, "StartTextClassificationManagerService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2466
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;

    .line 2467
    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2468
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2471
    :cond_cfa
    const-string v8, "StartNetworkScoreService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2472
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/NetworkScoreService$Lifecycle;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2473
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2475
    const-string v8, "StartNetworkStatsService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2477
    :try_start_d0e
    invoke-static {v4, v11}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    move-result-object v8

    move-object v15, v8

    .line 2478
    const-string/jumbo v8, "netstats"

    invoke-static {v8, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d19
    .catchall {:try_start_d0e .. :try_end_d19} :catchall_d1a

    .line 2481
    goto :goto_d22

    .line 2479
    :catchall_d1a
    move-exception v0

    move-object v8, v0

    .line 2480
    .restart local v8    # "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "starting NetworkStats Service"

    invoke-direct {v7, v9, v8}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2482
    .end local v8    # "e":Ljava/lang/Throwable;
    :goto_d22
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2484
    const-string v8, "StartNetworkPolicyManagerService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2486
    :try_start_d2a
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v9, v7, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v8, v4, v9, v11}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V
    :try_end_d31
    .catchall {:try_start_d2a .. :try_end_d31} :catchall_d3e

    .line 2488
    .end local v16    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_d31
    const-string/jumbo v9, "netpolicy"

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d37
    .catchall {:try_start_d31 .. :try_end_d37} :catchall_d39

    .line 2491
    move-object v10, v8

    goto :goto_d48

    .line 2489
    :catchall_d39
    move-exception v0

    move-object/from16 v16, v8

    move-object v8, v0

    goto :goto_d40

    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v16    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :catchall_d3e
    move-exception v0

    move-object v8, v0

    .line 2490
    .local v8, "e":Ljava/lang/Throwable;
    :goto_d40
    const-string/jumbo v9, "starting NetworkPolicy Service"

    invoke-direct {v7, v9, v8}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v10, v16

    .line 2492
    .end local v8    # "e":Ljava/lang/Throwable;
    .end local v16    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v10, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_d48
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2495
    const-string v8, "StartUrspService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2497
    :try_start_d50
    new-instance v8, Lcom/android/server/net/UrspService;

    iget-object v9, v7, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v8, v4, v9, v15, v11}, Lcom/android/server/net/UrspService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_d57
    .catchall {:try_start_d50 .. :try_end_d57} :catchall_d64

    .line 2499
    .end local v26    # "urspService":Lcom/android/server/net/UrspService;
    .local v8, "urspService":Lcom/android/server/net/UrspService;
    :try_start_d57
    const-string/jumbo v9, "urspservice"

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d5d
    .catchall {:try_start_d57 .. :try_end_d5d} :catchall_d5f

    .line 2502
    move-object v9, v8

    goto :goto_d6e

    .line 2500
    :catchall_d5f
    move-exception v0

    move-object/from16 v26, v8

    move-object v8, v0

    goto :goto_d66

    .end local v8    # "urspService":Lcom/android/server/net/UrspService;
    .restart local v26    # "urspService":Lcom/android/server/net/UrspService;
    :catchall_d64
    move-exception v0

    move-object v8, v0

    .line 2501
    .local v8, "e":Ljava/lang/Throwable;
    :goto_d66
    const-string/jumbo v9, "starting URSP Service"

    invoke-direct {v7, v9, v8}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v9, v26

    .line 2503
    .end local v8    # "e":Ljava/lang/Throwable;
    .end local v26    # "urspService":Lcom/android/server/net/UrspService;
    .local v9, "urspService":Lcom/android/server/net/UrspService;
    :goto_d6e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2506
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    move-object/from16 v48, v3

    .end local v3    # "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .local v48, "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    const-string v3, "android.hardware.wifi"

    invoke-virtual {v8, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_da4

    .line 2509
    const-string v3, "StartWifi"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2510
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.wifi.WifiService"

    move-object/from16 v16, v9

    .end local v9    # "urspService":Lcom/android/server/net/UrspService;
    .local v16, "urspService":Lcom/android/server/net/UrspService;
    const-string v9, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v3, v8, v9}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2512
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2513
    const-string v3, "StartWifiScanning"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2514
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.wifi.scanner.WifiScanningService"

    const-string v9, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v3, v8, v9}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2516
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_da6

    .line 2506
    .end local v16    # "urspService":Lcom/android/server/net/UrspService;
    .restart local v9    # "urspService":Lcom/android/server/net/UrspService;
    :cond_da4
    move-object/from16 v16, v9

    .line 2519
    .end local v9    # "urspService":Lcom/android/server/net/UrspService;
    .restart local v16    # "urspService":Lcom/android/server/net/UrspService;
    :goto_da6
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v8, "android.hardware.wifi.rtt"

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_dc3

    .line 2521
    const-string v3, "StartRttService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2522
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.wifi.rtt.RttService"

    const-string v9, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v3, v8, v9}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2524
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2527
    :cond_dc3
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v8, "android.hardware.wifi.aware"

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_de0

    .line 2529
    const-string v3, "StartWifiAware"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2530
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.wifi.aware.WifiAwareService"

    const-string v9, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v3, v8, v9}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2532
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2535
    :cond_de0
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v8, "android.hardware.wifi.direct"

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_dfd

    .line 2537
    const-string v3, "StartWifiP2P"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2538
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.wifi.p2p.WifiP2pService"

    const-string v9, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v3, v8, v9}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2540
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2543
    :cond_dfd
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v8, "android.hardware.lowpan"

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e18

    .line 2545
    const-string v3, "StartLowpan"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2546
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.lowpan.LowpanService"

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2547
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2550
    :cond_e18
    iget-object v3, v7, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.hardware.ethernet"

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e2c

    iget-object v3, v7, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2551
    const-string v8, "android.hardware.usb.host"

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e3b

    .line 2552
    :cond_e2c
    const-string v3, "StartEthernet"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2553
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2554
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2557
    :cond_e3b
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v3

    if-nez v3, :cond_e79

    .line 2558
    const-string v3, "StartKnoxGuard"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2560
    :try_start_e46
    const-string/jumbo v3, "ro.product.first_api_level"

    const/4 v8, 0x0

    invoke-static {v3, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v8, 0x1e

    if-lt v3, v8, :cond_e5e

    .line 2561
    const-string/jumbo v3, "knoxguard_service"

    new-instance v8, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;

    invoke-direct {v8, v4}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_e69

    .line 2563
    :cond_e5e
    const-string/jumbo v3, "knoxguard_service"

    new-instance v8, Lcom/samsung/android/knoxguard/service/KnoxGuardService;

    invoke-direct {v8, v4}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e69
    .catchall {:try_start_e46 .. :try_end_e69} :catchall_e6a

    .line 2568
    :goto_e69
    goto :goto_e76

    .line 2565
    :catchall_e6a
    move-exception v0

    move-object v3, v0

    .line 2566
    .local v3, "e":Ljava/lang/Throwable;
    const-string v8, "SystemServer"

    const-string v9, "Failed to add KnoxGuardService."

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2569
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_e76
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2573
    :cond_e79
    const-string v3, "StartConnectivityService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2575
    :try_start_e7e
    new-instance v3, Lcom/android/server/ConnectivityService;
    :try_end_e80
    .catchall {:try_start_e7e .. :try_end_e80} :catchall_ec7

    move-object v8, v3

    move-object/from16 v26, v16

    .end local v16    # "urspService":Lcom/android/server/net/UrspService;
    .restart local v26    # "urspService":Lcom/android/server/net/UrspService;
    move-object v9, v4

    move-object/from16 v16, v10

    .end local v10    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v16, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object v10, v11

    move-object/from16 v55, v11

    .end local v11    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v55, "networkManagement":Lcom/android/server/NetworkManagementService;
    move-object v11, v15

    move-object/from16 v56, v14

    move v14, v12

    .end local v12    # "safeMode":Z
    .local v14, "safeMode":Z
    .local v56, "ipSecService":Lcom/android/server/IpSecService;
    move-object/from16 v12, v16

    move-object/from16 v57, v2

    move-object v2, v13

    .end local v13    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v2, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v57, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v13, v26

    :try_start_e94
    invoke-direct/range {v8 .. v13}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/net/IUrspManager;)V
    :try_end_e97
    .catchall {:try_start_e94 .. :try_end_e97} :catchall_ec0

    .line 2577
    .end local v17    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v3, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_e97
    const-string v8, "connectivity"

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static {v8, v3, v10, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    :try_end_e9e
    .catchall {:try_start_e97 .. :try_end_e9e} :catchall_eb7

    .line 2580
    move-object/from16 v8, v16

    .end local v16    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_ea0
    invoke-virtual {v8, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_ea3
    .catchall {:try_start_ea0 .. :try_end_ea3} :catchall_eb0

    .line 2581
    move-object/from16 v9, v26

    .end local v26    # "urspService":Lcom/android/server/net/UrspService;
    .restart local v9    # "urspService":Lcom/android/server/net/UrspService;
    :try_start_ea5
    invoke-virtual {v9, v3}, Lcom/android/server/net/UrspService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_ea8
    .catchall {:try_start_ea5 .. :try_end_ea8} :catchall_eab

    .line 2584
    move-object/from16 v17, v3

    goto :goto_eda

    .line 2582
    :catchall_eab
    move-exception v0

    move-object/from16 v17, v3

    move-object v3, v0

    goto :goto_ed4

    .end local v9    # "urspService":Lcom/android/server/net/UrspService;
    .restart local v26    # "urspService":Lcom/android/server/net/UrspService;
    :catchall_eb0
    move-exception v0

    move-object/from16 v9, v26

    move-object/from16 v17, v3

    move-object v3, v0

    .end local v26    # "urspService":Lcom/android/server/net/UrspService;
    .restart local v9    # "urspService":Lcom/android/server/net/UrspService;
    goto :goto_ed4

    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v9    # "urspService":Lcom/android/server/net/UrspService;
    .restart local v16    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v26    # "urspService":Lcom/android/server/net/UrspService;
    :catchall_eb7
    move-exception v0

    move-object/from16 v8, v16

    move-object/from16 v9, v26

    move-object/from16 v17, v3

    move-object v3, v0

    .end local v16    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v26    # "urspService":Lcom/android/server/net/UrspService;
    .restart local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v9    # "urspService":Lcom/android/server/net/UrspService;
    goto :goto_ed4

    .end local v3    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v9    # "urspService":Lcom/android/server/net/UrspService;
    .restart local v16    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v17    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v26    # "urspService":Lcom/android/server/net/UrspService;
    :catchall_ec0
    move-exception v0

    move-object/from16 v8, v16

    move-object/from16 v9, v26

    move-object v3, v0

    .end local v16    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v26    # "urspService":Lcom/android/server/net/UrspService;
    .restart local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v9    # "urspService":Lcom/android/server/net/UrspService;
    goto :goto_ed4

    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v9    # "urspService":Lcom/android/server/net/UrspService;
    .end local v55    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v56    # "ipSecService":Lcom/android/server/IpSecService;
    .end local v57    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v2, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v10    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v11    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v12    # "safeMode":Z
    .restart local v13    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v14, "ipSecService":Lcom/android/server/IpSecService;
    .local v16, "urspService":Lcom/android/server/net/UrspService;
    :catchall_ec7
    move-exception v0

    move-object/from16 v57, v2

    move-object v8, v10

    move-object/from16 v55, v11

    move-object v2, v13

    move-object/from16 v56, v14

    move-object/from16 v9, v16

    move v14, v12

    move-object v3, v0

    .line 2583
    .end local v10    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v12    # "safeMode":Z
    .end local v13    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v16    # "urspService":Lcom/android/server/net/UrspService;
    .local v2, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v3, "e":Ljava/lang/Throwable;
    .restart local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v9    # "urspService":Lcom/android/server/net/UrspService;
    .local v14, "safeMode":Z
    .restart local v55    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v56    # "ipSecService":Lcom/android/server/IpSecService;
    .restart local v57    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_ed4
    const-string/jumbo v10, "starting Connectivity Service"

    invoke-direct {v7, v10, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2585
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_eda
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2620
    const-string v3, "StartNsdService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2622
    :try_start_ee2
    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v3
    :try_end_ee6
    .catchall {:try_start_ee2 .. :try_end_ee6} :catchall_ef4

    .line 2623
    .end local v18    # "serviceDiscovery":Lcom/android/server/NsdService;
    .local v3, "serviceDiscovery":Lcom/android/server/NsdService;
    :try_start_ee6
    const-string/jumbo v10, "servicediscovery"

    invoke-static {v10, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_eec
    .catchall {:try_start_ee6 .. :try_end_eec} :catchall_eef

    .line 2627
    move-object/from16 v18, v3

    goto :goto_efc

    .line 2625
    :catchall_eef
    move-exception v0

    move-object/from16 v18, v3

    move-object v3, v0

    goto :goto_ef6

    .end local v3    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v18    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catchall_ef4
    move-exception v0

    move-object v3, v0

    .line 2626
    .local v3, "e":Ljava/lang/Throwable;
    :goto_ef6
    const-string/jumbo v10, "starting Service Discovery Service"

    invoke-direct {v7, v10, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2628
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_efc
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2630
    const-string v3, "StartSystemUpdateManagerService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2632
    :try_start_f04
    const-string/jumbo v3, "system_update"

    new-instance v10, Lcom/android/server/SystemUpdateManagerService;

    invoke-direct {v10, v4}, Lcom/android/server/SystemUpdateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f0f
    .catchall {:try_start_f04 .. :try_end_f0f} :catchall_f10

    .line 2636
    goto :goto_f18

    .line 2634
    :catchall_f10
    move-exception v0

    move-object v3, v0

    .line 2635
    .restart local v3    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting SystemUpdateManagerService"

    invoke-direct {v7, v10, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2637
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_f18
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2639
    const-string v3, "StartUpdateLockService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2641
    :try_start_f20
    const-string/jumbo v3, "updatelock"

    new-instance v10, Lcom/android/server/UpdateLockService;

    invoke-direct {v10, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f2b
    .catchall {:try_start_f20 .. :try_end_f2b} :catchall_f2c

    .line 2645
    goto :goto_f34

    .line 2643
    :catchall_f2c
    move-exception v0

    move-object v3, v0

    .line 2644
    .restart local v3    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting UpdateLockService"

    invoke-direct {v7, v10, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2646
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_f34
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2648
    const-string v3, "StartNotificationManager"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2649
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2650
    invoke-static {v4}, Lcom/android/internal/notification/SystemNotificationChannels;->removeDeprecated(Landroid/content/Context;)V

    .line 2651
    invoke-static {v4}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    .line 2652
    nop

    .line 2653
    const-string/jumbo v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 2652
    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v19

    .line 2654
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2656
    const-string v3, "StartDeviceMonitor"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2657
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v3, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2658
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2660
    const-string v3, "StartLocationManagerService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2661
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/location/LocationManagerService$Lifecycle;

    invoke-virtual {v3, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2662
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2664
    const-string v3, "StartSLocationService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2666
    :try_start_f7b
    const-string v3, "SystemServer"

    const-string v10, "SLocation Manager"

    invoke-static {v3, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    const-string v3, "com.samsung.android.location.SLocationLoader"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 2668
    .local v3, "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v10, "getSLocationService"

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    const/4 v13, 0x0

    aput-object v11, v12, v13

    invoke-virtual {v3, v10, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 2669
    .local v10, "getSLocationService":Ljava/lang/reflect/Method;
    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v4, v12, v13

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/IBinder;
    :try_end_fa3
    .catchall {:try_start_f7b .. :try_end_fa3} :catchall_fb2

    move-object v11, v12

    .line 2670
    .end local v42    # "sLocation":Landroid/os/IBinder;
    .local v11, "sLocation":Landroid/os/IBinder;
    :try_start_fa4
    const-string/jumbo v12, "sec_location"

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_faa
    .catchall {:try_start_fa4 .. :try_end_faa} :catchall_fad

    .line 2673
    .end local v3    # "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "getSLocationService":Ljava/lang/reflect/Method;
    move-object/from16 v42, v11

    goto :goto_fb9

    .line 2671
    :catchall_fad
    move-exception v0

    move-object v3, v0

    move-object/from16 v42, v11

    goto :goto_fb4

    .end local v11    # "sLocation":Landroid/os/IBinder;
    .restart local v42    # "sLocation":Landroid/os/IBinder;
    :catchall_fb2
    move-exception v0

    move-object v3, v0

    .line 2672
    .local v3, "e":Ljava/lang/Throwable;
    :goto_fb4
    const-string v10, "Starting SLocationService"

    invoke-direct {v7, v10, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2674
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_fb9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2676
    const-string v3, "StartCountryDetectorService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2678
    :try_start_fc1
    new-instance v3, Lcom/android/server/CountryDetectorService;

    invoke-direct {v3, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_fc6
    .catchall {:try_start_fc1 .. :try_end_fc6} :catchall_fd3

    .line 2679
    .end local v44    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v3, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_fc6
    const-string v10, "country_detector"

    invoke-static {v10, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_fcb
    .catchall {:try_start_fc6 .. :try_end_fcb} :catchall_fce

    .line 2682
    move-object/from16 v44, v3

    goto :goto_fdb

    .line 2680
    :catchall_fce
    move-exception v0

    move-object/from16 v44, v3

    move-object v3, v0

    goto :goto_fd5

    .end local v3    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v44    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catchall_fd3
    move-exception v0

    move-object v3, v0

    .line 2681
    .local v3, "e":Ljava/lang/Throwable;
    :goto_fd5
    const-string/jumbo v10, "starting Country Detector"

    invoke-direct {v7, v10, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2683
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_fdb
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2685
    const-string v3, "StartTimeDetectorService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2687
    :try_start_fe3
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.timedetector.TimeDetectorService$Lifecycle"

    invoke-virtual {v3, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_fea
    .catchall {:try_start_fe3 .. :try_end_fea} :catchall_feb

    .line 2690
    goto :goto_ff3

    .line 2688
    :catchall_feb
    move-exception v0

    move-object v3, v0

    .line 2689
    .restart local v3    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting StartTimeDetectorService service"

    invoke-direct {v7, v10, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2691
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_ff3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2693
    const-string v3, "StartTimeZoneDetectorService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2695
    :try_start_ffb
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.timezonedetector.TimeZoneDetectorService$Lifecycle"

    invoke-virtual {v3, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1002
    .catchall {:try_start_ffb .. :try_end_1002} :catchall_1003

    .line 2698
    goto :goto_100b

    .line 2696
    :catchall_1003
    move-exception v0

    move-object v3, v0

    .line 2697
    .restart local v3    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting StartTimeZoneDetectorService service"

    invoke-direct {v7, v10, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2699
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_100b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2701
    if-nez v36, :cond_1028

    .line 2702
    const-string v3, "StartSearchManagerService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2704
    :try_start_1015
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v3, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_101c
    .catchall {:try_start_1015 .. :try_end_101c} :catchall_101d

    .line 2707
    goto :goto_1025

    .line 2705
    :catchall_101d
    move-exception v0

    move-object v3, v0

    .line 2706
    .restart local v3    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting Search Service"

    invoke-direct {v7, v10, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2708
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1025
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2711
    :cond_1028
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v10, 0x1110083

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1045

    .line 2712
    const-string v3, "StartWallpaperManagerService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2713
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v3, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2714
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_104c

    .line 2716
    :cond_1045
    const-string v3, "SystemServer"

    const-string v10, "Wallpaper service disabled by config"

    invoke-static {v3, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    :goto_104c
    const-string v3, "StartAudioService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2720
    if-nez v38, :cond_105b

    .line 2721
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v3, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto :goto_1094

    .line 2723
    :cond_105b
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v10, 0x10402d7

    .line 2724
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2726
    .local v3, "className":Ljava/lang/String;
    :try_start_1066
    iget-object v10, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "$Lifecycle"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_107c
    .catchall {:try_start_1066 .. :try_end_107c} :catchall_107d

    .line 2729
    goto :goto_1094

    .line 2727
    :catchall_107d
    move-exception v0

    move-object v10, v0

    .line 2728
    .local v10, "e":Ljava/lang/Throwable;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "starting "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11, v10}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2731
    .end local v3    # "className":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Throwable;
    :goto_1094
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2733
    const-string v3, "StartSoundTriggerMiddlewareService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2734
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;

    invoke-virtual {v3, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2735
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2738
    const-string v3, "StartLedBackCoverService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2739
    new-instance v3, Lcom/android/server/ledcover/LedBackCoverService;

    invoke-direct {v3, v4}, Lcom/android/server/ledcover/LedBackCoverService;-><init>(Landroid/content/Context;)V

    iput-object v3, v7, Lcom/android/server/SystemServer;->mLedBackCoverService:Lcom/android/server/ledcover/LedBackCoverService;

    .line 2740
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2744
    const-string v3, "LedCoverAppService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2745
    new-instance v3, Lcom/android/server/ledcoverapp/LedCoverAppService;

    invoke-direct {v3, v4}, Lcom/android/server/ledcoverapp/LedCoverAppService;-><init>(Landroid/content/Context;)V

    iput-object v3, v7, Lcom/android/server/SystemServer;->mLedCoverAppService:Lcom/android/server/ledcoverapp/LedCoverAppService;

    .line 2746
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2749
    iget-object v3, v7, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.hardware.broadcastradio"

    invoke-virtual {v3, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10dd

    .line 2750
    const-string v3, "StartBroadcastRadioService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2751
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v3, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2752
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2755
    :cond_10dd
    const-string v3, "StartDockObserver"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2756
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/DockObserver;

    invoke-virtual {v3, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2757
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2759
    if-eqz v36, :cond_10fd

    .line 2760
    const-string v3, "StartThermalObserver"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2761
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.google.android.clockwork.ThermalObserver"

    invoke-virtual {v3, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2762
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2765
    :cond_10fd
    const-string v3, "StartWiredAccessoryManager"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2768
    :try_start_1102
    new-instance v3, Lcom/android/server/WiredAccessoryManager;

    invoke-direct {v3, v4, v5}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v5, v3}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_110a
    .catchall {:try_start_1102 .. :try_end_110a} :catchall_110b

    .line 2772
    goto :goto_1113

    .line 2770
    :catchall_110b
    move-exception v0

    move-object v3, v0

    .line 2771
    .local v3, "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting WiredAccessoryManager"

    invoke-direct {v7, v10, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2773
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1113
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2775
    iget-object v3, v7, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.software.midi"

    invoke-virtual {v3, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_112f

    .line 2777
    const-string v3, "StartMidiManager"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2778
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v3, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2779
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2783
    :cond_112f
    const-string v3, "StartAdbService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2785
    :try_start_1134
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.adb.AdbService$Lifecycle"

    invoke-virtual {v3, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_113b
    .catchall {:try_start_1134 .. :try_end_113b} :catchall_113c

    .line 2788
    goto :goto_1145

    .line 2786
    :catchall_113c
    move-exception v0

    move-object v3, v0

    .line 2787
    .restart local v3    # "e":Ljava/lang/Throwable;
    const-string v10, "SystemServer"

    const-string v11, "Failure starting AdbService"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1145
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2791
    iget-object v3, v7, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.hardware.usb.host"

    invoke-virtual {v3, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_115e

    iget-object v3, v7, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2792
    const-string v10, "android.hardware.usb.accessory"

    invoke-virtual {v3, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_115e

    if-eqz v35, :cond_116d

    .line 2796
    :cond_115e
    const-string v3, "StartUsbService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2797
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v3, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2798
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2801
    :cond_116d
    if-nez v36, :cond_1193

    .line 2802
    const-string v3, "StartSerialService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2805
    :try_start_1174
    new-instance v3, Lcom/android/server/SerialService;

    invoke-direct {v3, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_1179
    .catchall {:try_start_1174 .. :try_end_1179} :catchall_1187

    .line 2806
    .end local v20    # "serial":Lcom/android/server/SerialService;
    .local v3, "serial":Lcom/android/server/SerialService;
    :try_start_1179
    const-string/jumbo v10, "serial"

    invoke-static {v10, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_117f
    .catchall {:try_start_1179 .. :try_end_117f} :catchall_1182

    .line 2809
    move-object/from16 v20, v3

    goto :goto_1190

    .line 2807
    :catchall_1182
    move-exception v0

    move-object/from16 v20, v3

    move-object v3, v0

    goto :goto_1189

    .end local v3    # "serial":Lcom/android/server/SerialService;
    .restart local v20    # "serial":Lcom/android/server/SerialService;
    :catchall_1187
    move-exception v0

    move-object v3, v0

    .line 2808
    .local v3, "e":Ljava/lang/Throwable;
    :goto_1189
    const-string v10, "SystemServer"

    const-string v11, "Failure starting SerialService"

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2810
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1190
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2813
    :cond_1193
    const-string v3, "StartHardwarePropertiesManagerService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2815
    :try_start_1198
    new-instance v3, Lcom/android/server/HardwarePropertiesManagerService;

    invoke-direct {v3, v4}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_119d
    .catchall {:try_start_1198 .. :try_end_119d} :catchall_11ab

    .line 2816
    .end local v25    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v3, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :try_start_119d
    const-string/jumbo v10, "hardware_properties"

    invoke-static {v10, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11a3
    .catchall {:try_start_119d .. :try_end_11a3} :catchall_11a6

    .line 2820
    move-object/from16 v25, v3

    goto :goto_11b4

    .line 2818
    :catchall_11a6
    move-exception v0

    move-object/from16 v25, v3

    move-object v3, v0

    goto :goto_11ad

    .end local v3    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v25    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :catchall_11ab
    move-exception v0

    move-object v3, v0

    .line 2819
    .local v3, "e":Ljava/lang/Throwable;
    :goto_11ad
    const-string v10, "SystemServer"

    const-string v11, "Failure starting HardwarePropertiesManagerService"

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2821
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_11b4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2823
    const-string v3, "StartTwilightService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2824
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v3, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2825
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2828
    const-string v3, "StartIntelligentBatterySaverService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2829
    new-instance v3, Lcom/android/server/ibs/IntelligentBatterySaverService;

    invoke-direct {v3, v4}, Lcom/android/server/ibs/IntelligentBatterySaverService;-><init>(Landroid/content/Context;)V

    .line 2830
    .local v3, "intelligentBatterySaverService":Lcom/android/server/ibs/IntelligentBatterySaverService;
    const-string v10, "IntelligentBatterySaverService"

    invoke-static {v10, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2831
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2834
    const-string v10, "StartColorDisplay"

    invoke-virtual {v6, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2835
    iget-object v10, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2836
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2839
    const-string v10, "StartJobScheduler"

    invoke-virtual {v6, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2840
    iget-object v10, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v11, "com.android.server.job.JobSchedulerService"

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2841
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2843
    const-string v10, "StartSoundTrigger"

    invoke-virtual {v6, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2844
    iget-object v10, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2845
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2847
    const-string v10, "StartTrustManager"

    invoke-virtual {v6, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2848
    iget-object v10, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2849
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2851
    iget-object v10, v7, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v11, "android.software.backup"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_122d

    .line 2852
    const-string v10, "StartBackupManager"

    invoke-virtual {v6, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2853
    iget-object v10, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v11, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2854
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2857
    :cond_122d
    iget-object v10, v7, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v11, "android.software.app_widgets"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1244

    .line 2858
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1110070

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_1253

    .line 2859
    :cond_1244
    const-string v10, "StartAppWidgetService"

    invoke-virtual {v6, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2860
    iget-object v10, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v11, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2861
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2865
    :cond_1253
    const-string v10, "StartRoleManagerService"

    invoke-virtual {v6, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2866
    iget-object v10, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v11, Lcom/android/server/role/RoleManagerService;

    iget-object v12, v7, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    new-instance v13, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;

    invoke-direct {v13, v12}, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;-><init>(Landroid/content/Context;)V

    invoke-direct {v11, v12, v13}, Lcom/android/server/role/RoleManagerService;-><init>(Landroid/content/Context;Lcom/android/server/role/RoleManagerService$RoleHoldersResolver;)V

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 2868
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2874
    const-string v10, "StartVoiceRecognitionManager"

    invoke-virtual {v6, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2875
    iget-object v10, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v11, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2876
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2878
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v10

    if-eqz v10, :cond_1294

    .line 2879
    const-string v10, "StartGestureLauncher"

    invoke-virtual {v6, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2880
    iget-object v10, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2881
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2883
    :cond_1294
    const-string v10, "StartSensorNotification"

    invoke-virtual {v6, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2884
    iget-object v10, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2885
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2887
    iget-object v10, v7, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v11, "android.hardware.context_hub"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12bc

    .line 2888
    const-string v10, "StartContextHubSystemService"

    invoke-virtual {v6, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2889
    iget-object v10, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2890
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2893
    :cond_12bc
    const-string v10, "StartDiskStatsService"

    invoke-virtual {v6, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2895
    :try_start_12c1
    const-string v10, "diskstats"

    new-instance v11, Lcom/android/server/DiskStatsService;

    invoke-direct {v11, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v10, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12cb
    .catchall {:try_start_12c1 .. :try_end_12cb} :catchall_12cc

    .line 2898
    goto :goto_12d4

    .line 2896
    :catchall_12cc
    move-exception v0

    move-object v10, v0

    .line 2897
    .restart local v10    # "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "starting DiskStats Service"

    invoke-direct {v7, v11, v10}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2899
    .end local v10    # "e":Ljava/lang/Throwable;
    :goto_12d4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2901
    const-string v10, "RuntimeService"

    invoke-virtual {v6, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2903
    :try_start_12dc
    const-string/jumbo v10, "runtime"

    new-instance v11, Lcom/android/server/RuntimeService;

    invoke-direct {v11, v4}, Lcom/android/server/RuntimeService;-><init>(Landroid/content/Context;)V

    invoke-static {v10, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12e7
    .catchall {:try_start_12dc .. :try_end_12e7} :catchall_12e8

    .line 2906
    goto :goto_12f0

    .line 2904
    :catchall_12e8
    move-exception v0

    move-object v10, v0

    .line 2905
    .restart local v10    # "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "starting RuntimeService"

    invoke-direct {v7, v11, v10}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2907
    .end local v10    # "e":Ljava/lang/Throwable;
    :goto_12f0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2913
    iget-boolean v10, v7, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v10, :cond_1306

    .line 2914
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1110082

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_1306

    const/4 v10, 0x1

    goto :goto_1307

    :cond_1306
    const/4 v10, 0x0

    .line 2916
    .local v10, "startRulesManagerService":Z
    :goto_1307
    if-eqz v10, :cond_1318

    .line 2917
    const-string v11, "StartTimeZoneRulesManagerService"

    invoke-virtual {v6, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2918
    iget-object v11, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v12, "com.android.server.timezone.RulesManagerService$Lifecycle"

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2919
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2922
    :cond_1318
    if-nez v36, :cond_133f

    if-nez v31, :cond_133f

    .line 2923
    const-string v11, "StartNetworkTimeUpdateService"

    invoke-virtual {v6, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2925
    :try_start_1321
    new-instance v11, Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {v11, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_1326
    .catchall {:try_start_1321 .. :try_end_1326} :catchall_1334

    .line 2926
    .end local v21    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v11, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :try_start_1326
    const-string/jumbo v12, "network_time_update_service"

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_132c
    .catchall {:try_start_1326 .. :try_end_132c} :catchall_132f

    .line 2929
    move-object/from16 v21, v11

    goto :goto_133c

    .line 2927
    :catchall_132f
    move-exception v0

    move-object/from16 v21, v11

    move-object v11, v0

    goto :goto_1336

    .end local v11    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v21    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catchall_1334
    move-exception v0

    move-object v11, v0

    .line 2928
    .local v11, "e":Ljava/lang/Throwable;
    :goto_1336
    const-string/jumbo v12, "starting NetworkTimeUpdate service"

    invoke-direct {v7, v12, v11}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2930
    .end local v11    # "e":Ljava/lang/Throwable;
    :goto_133c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2933
    :cond_133f
    const-string v11, "CertBlacklister"

    invoke-virtual {v6, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2935
    :try_start_1344
    new-instance v11, Lcom/android/server/CertBlacklister;

    invoke-direct {v11, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_1349
    .catchall {:try_start_1344 .. :try_end_1349} :catchall_134a

    .line 2938
    goto :goto_1352

    .line 2936
    :catchall_134a
    move-exception v0

    move-object v11, v0

    .line 2937
    .restart local v11    # "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "starting CertBlacklister"

    invoke-direct {v7, v12, v11}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2939
    .end local v11    # "e":Ljava/lang/Throwable;
    :goto_1352
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2943
    const-string v11, "StartEmergencyAffordanceService"

    invoke-virtual {v6, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2944
    iget-object v11, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2945
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2948
    new-instance v11, Lcom/android/server/-$$Lambda$SystemServer$Y1gEdKr_Hb7K7cbTDAo_WOJ-SYI;

    invoke-direct {v11, v7}, Lcom/android/server/-$$Lambda$SystemServer$Y1gEdKr_Hb7K7cbTDAo_WOJ-SYI;-><init>(Lcom/android/server/SystemServer;)V

    const-string/jumbo v12, "startBlobStoreManagerService"

    invoke-static {v11, v12}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v11

    iput-object v11, v7, Lcom/android/server/SystemServer;->mBlobStoreServiceStart:Ljava/util/concurrent/Future;

    .line 2956
    const-string v11, "StartDreamManager"

    invoke-virtual {v6, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2957
    iget-object v11, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2958
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2960
    const-string v11, "AddGraphicsStatsService"

    invoke-virtual {v6, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2961
    new-instance v11, Landroid/graphics/GraphicsStatsService;

    invoke-direct {v11, v4}, Landroid/graphics/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v12, "graphicsstats"

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2963
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2965
    sget-boolean v11, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v11, :cond_13aa

    .line 2966
    const-string v11, "AddCoverageService"

    invoke-virtual {v6, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2967
    new-instance v11, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v11}, Lcom/android/server/coverage/CoverageService;-><init>()V

    const-string v12, "coverage"

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2968
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2971
    :cond_13aa
    iget-object v11, v7, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v12, "android.software.print"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13c3

    .line 2972
    const-string v11, "StartPrintManager"

    invoke-virtual {v6, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2973
    iget-object v11, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v12, "com.android.server.print.PrintManagerService"

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2974
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2977
    :cond_13c3
    iget-object v11, v7, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v12, "android.software.companion_device_setup"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13dc

    .line 2978
    const-string v11, "StartCompanionDeviceManager"

    invoke-virtual {v6, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2979
    iget-object v11, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v12, "com.android.server.companion.CompanionDeviceManagerService"

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2980
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2983
    :cond_13dc
    const-string v11, "StartRestrictionManager"

    invoke-virtual {v6, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2984
    iget-object v11, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2985
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2989
    const-string v11, "CocktailBarService"

    invoke-virtual {v6, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2990
    iget-object v11, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v12, "com.android.server.cocktailbar.CocktailBarManagerService"

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2991
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2996
    iget v11, v7, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_1435

    .line 2997
    const-string/jumbo v11, "vold.decrypt"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2998
    .local v11, "cryptState":Ljava/lang/String;
    const-string/jumbo v12, "trigger_restart_min_framework"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_142e

    const-string v12, "1"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1418

    goto :goto_142e

    .line 3001
    :cond_1418
    invoke-static {}, Lcom/samsung/android/cover/CoverFeatures;->hasCoverSystemFeature()Z

    move-result v12

    if-eqz v12, :cond_1435

    .line 3002
    const-string v12, "StartCoverService"

    invoke-virtual {v6, v12}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3003
    iget-object v12, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v13, "com.android.server.cover.CoverManagerService"

    invoke-virtual {v12, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3004
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_1435

    .line 2999
    :cond_142e
    :goto_142e
    const-string v12, "SystemServer"

    const-string v13, "Detected encryption in progress - unable CoverManagerService"

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3011
    .end local v11    # "cryptState":Ljava/lang/String;
    :cond_1435
    :goto_1435
    const-string v11, "StartAODService"

    invoke-virtual {v6, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3012
    iget-object v11, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v12, "com.android.server.aod.AODManagerService"

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3013
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3017
    const-string v11, "Samsung Accessory Manager"

    invoke-virtual {v6, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3019
    :try_start_1449
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 3020
    .local v11, "pm":Landroid/content/pm/PackageManager;
    if-eqz v11, :cond_1487

    .line 3021
    const-string v12, "com.sec.feature.nfc_authentication"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_146f

    const-string v12, "com.sec.feature.nfc_authentication_cover"

    .line 3022
    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_146f

    const-string v12, "com.sec.feature.usb_authentication"

    .line 3023
    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_146f

    const-string v12, "com.sec.feature.wirelesscharger_authentication"

    .line 3024
    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1487

    .line 3025
    :cond_146f
    const-string v12, "SystemServer"

    const-string v13, "Samsung Accessory Manager"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    new-instance v12, Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {v12, v4, v5}, Lcom/samsung/accessory/manager/SAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    iput-object v12, v7, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 3027
    const-class v13, Lcom/samsung/accessory/manager/SAccessoryManagerInternal;

    invoke-static {v13, v12}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3028
    iget-object v12, v7, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-virtual {v5, v12}, Lcom/android/server/input/InputManagerService;->setSecAccessoryManagerCallbacks(Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;)V
    :try_end_1487
    .catchall {:try_start_1449 .. :try_end_1487} :catchall_1488

    .line 3033
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    :cond_1487
    goto :goto_1490

    .line 3031
    :catchall_1488
    move-exception v0

    move-object v11, v0

    .line 3032
    .local v11, "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "starting SAccessoryManager"

    invoke-direct {v7, v12, v11}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3034
    .end local v11    # "e":Ljava/lang/Throwable;
    :goto_1490
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3037
    const-string v11, "StartMediaSessionService"

    invoke-virtual {v6, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3038
    iget-object v11, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3039
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3041
    iget-object v11, v7, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v12, "android.hardware.hdmi.cec"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14bb

    .line 3042
    const-string v11, "StartHdmiControlService"

    invoke-virtual {v6, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3043
    iget-object v11, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3044
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3047
    :cond_14bb
    iget-object v11, v7, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v12, "android.software.live_tv"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_14cf

    iget-object v11, v7, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3048
    const-string v12, "android.software.leanback"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14de

    .line 3049
    :cond_14cf
    const-string v11, "StartTvInputManager"

    invoke-virtual {v6, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3050
    iget-object v11, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3051
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3054
    :cond_14de
    iget-object v11, v7, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v12, "android.hardware.tv.tuner"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14f7

    .line 3055
    const-string v11, "StartTunerResourceManager"

    invoke-virtual {v6, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3056
    iget-object v11, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3057
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3060
    :cond_14f7
    iget-object v11, v7, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v12, "android.software.picture_in_picture"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1510

    .line 3061
    const-string v11, "StartMediaResourceMonitor"

    invoke-virtual {v6, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3062
    iget-object v11, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3063
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3066
    :cond_1510
    iget-object v11, v7, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v12, "android.software.leanback"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1529

    .line 3067
    const-string v11, "StartTvRemoteService"

    invoke-virtual {v6, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3068
    iget-object v11, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3069
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3072
    :cond_1529
    const-string v11, "StartMediaRouterService"

    invoke-virtual {v6, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3074
    :try_start_152e
    new-instance v11, Lcom/android/server/media/MediaRouterService;

    invoke-direct {v11, v4}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_1533
    .catchall {:try_start_152e .. :try_end_1533} :catchall_1541

    .line 3075
    .end local v46    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v11, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_1533
    const-string/jumbo v12, "media_router"

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1539
    .catchall {:try_start_1533 .. :try_end_1539} :catchall_153c

    .line 3078
    move-object/from16 v46, v11

    goto :goto_1549

    .line 3076
    :catchall_153c
    move-exception v0

    move-object/from16 v46, v11

    move-object v11, v0

    goto :goto_1543

    .end local v11    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v46    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catchall_1541
    move-exception v0

    move-object v11, v0

    .line 3077
    .local v11, "e":Ljava/lang/Throwable;
    :goto_1543
    const-string/jumbo v12, "starting MediaRouterService"

    invoke-direct {v7, v12, v11}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3079
    .end local v11    # "e":Ljava/lang/Throwable;
    :goto_1549
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3081
    iget-object v11, v7, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3082
    const-string v12, "android.hardware.biometrics.face"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    .line 3083
    .local v11, "hasFeatureFace":Z
    iget-object v12, v7, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3084
    const-string v13, "android.hardware.biometrics.iris"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    .line 3085
    .local v12, "hasFeatureIris":Z
    iget-object v13, v7, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3086
    move-object/from16 v16, v3

    .end local v3    # "intelligentBatterySaverService":Lcom/android/server/ibs/IntelligentBatterySaverService;
    .local v16, "intelligentBatterySaverService":Lcom/android/server/ibs/IntelligentBatterySaverService;
    const-string v3, "android.hardware.fingerprint"

    invoke-virtual {v13, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    .line 3088
    .local v3, "hasFeatureFingerprint":Z
    if-eqz v11, :cond_157a

    .line 3089
    const-string v13, "StartFaceSensor"

    invoke-virtual {v6, v13}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3090
    iget-object v13, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v26, v8

    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v26, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const-class v8, Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v13, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3091
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_157c

    .line 3088
    .end local v26    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_157a
    move-object/from16 v26, v8

    .line 3094
    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v26    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_157c
    if-eqz v12, :cond_158d

    .line 3095
    const-string v8, "StartIrisSensor"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3096
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/biometrics/iris/IrisService;

    invoke-virtual {v8, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3097
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3100
    :cond_158d
    if-eqz v3, :cond_159e

    .line 3101
    const-string v8, "StartFingerprintSensor"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3102
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v8, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3103
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3107
    :cond_159e
    const-string v8, "StartBiometricService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3108
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v8, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3109
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3111
    const-string v8, "StartAuthService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3112
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v8, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3113
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3116
    const-string v8, "StartBackgroundDexOptService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3118
    :try_start_15c1
    invoke-static {v4}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_15c4
    .catchall {:try_start_15c1 .. :try_end_15c4} :catchall_15c5

    .line 3121
    goto :goto_15cd

    .line 3119
    :catchall_15c5
    move-exception v0

    move-object v8, v0

    .line 3120
    .local v8, "e":Ljava/lang/Throwable;
    const-string/jumbo v13, "starting StartBackgroundDexOptService"

    invoke-direct {v7, v13, v8}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3122
    .end local v8    # "e":Ljava/lang/Throwable;
    :goto_15cd
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3124
    if-nez v36, :cond_15e6

    .line 3127
    const-string v8, "StartDynamicCodeLoggingService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3129
    :try_start_15d7
    invoke-static {v4}, Lcom/android/server/pm/DynamicCodeLoggingService;->schedule(Landroid/content/Context;)V
    :try_end_15da
    .catchall {:try_start_15d7 .. :try_end_15da} :catchall_15db

    .line 3132
    goto :goto_15e3

    .line 3130
    :catchall_15db
    move-exception v0

    move-object v8, v0

    .line 3131
    .restart local v8    # "e":Ljava/lang/Throwable;
    const-string/jumbo v13, "starting DynamicCodeLoggingService"

    invoke-direct {v7, v13, v8}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3133
    .end local v8    # "e":Ljava/lang/Throwable;
    :goto_15e3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3136
    :cond_15e6
    if-nez v36, :cond_15fb

    .line 3137
    const-string v8, "StartPruneInstantAppsJobService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3139
    :try_start_15ed
    invoke-static {v4}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_15f0
    .catchall {:try_start_15ed .. :try_end_15f0} :catchall_15f1

    .line 3142
    goto :goto_15f8

    .line 3140
    :catchall_15f1
    move-exception v0

    move-object v8, v0

    .line 3141
    .restart local v8    # "e":Ljava/lang/Throwable;
    const-string v13, "StartPruneInstantAppsJobService"

    invoke-direct {v7, v13, v8}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3143
    .end local v8    # "e":Ljava/lang/Throwable;
    :goto_15f8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3147
    :cond_15fb
    const-string v8, "StartSmartThingsService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3148
    new-instance v8, Lcom/android/server/smartthings/SmartThingsService;

    invoke-direct {v8, v4}, Lcom/android/server/smartthings/SmartThingsService;-><init>(Landroid/content/Context;)V

    iput-object v8, v7, Lcom/android/server/SystemServer;->mSmartThingsService:Lcom/android/server/smartthings/SmartThingsService;

    .line 3149
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3153
    const-string v8, "StartShortcutServiceLifecycle"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3154
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v8, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3155
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3157
    const-string v8, "StartLauncherAppsService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3158
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v8, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3159
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3161
    const-string v8, "StartCrossProfileAppsService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3162
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/pm/CrossProfileAppsService;

    invoke-virtual {v8, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3163
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3166
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v13, "android.hardware.wifi"

    invoke-virtual {v8, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1657

    .line 3168
    const-string v8, "StartOemWifi"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3169
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v13, "com.samsung.android.server.wifi.SemWifiService"

    move/from16 v58, v3

    .end local v3    # "hasFeatureFingerprint":Z
    .local v58, "hasFeatureFingerprint":Z
    const-string v3, "/system/framework/semwifi-service.jar"

    invoke-virtual {v8, v13, v3}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3171
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_1659

    .line 3166
    .end local v58    # "hasFeatureFingerprint":Z
    .restart local v3    # "hasFeatureFingerprint":Z
    :cond_1657
    move/from16 v58, v3

    .line 3175
    .end local v3    # "hasFeatureFingerprint":Z
    .restart local v58    # "hasFeatureFingerprint":Z
    :goto_1659
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v8, "android.hardware.wifi.direct"

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_167e

    .line 3177
    const-string v3, "StartOemWifiP2p"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3179
    :try_start_166a
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.samsung.android.server.wifi.p2p.SemWifiP2pService"

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1671
    .catchall {:try_start_166a .. :try_end_1671} :catchall_1672

    .line 3182
    goto :goto_167b

    .line 3180
    :catchall_1672
    move-exception v0

    move-object v3, v0

    .line 3181
    .local v3, "e":Ljava/lang/Throwable;
    const-string v8, "SystemServer"

    const-string v13, "Failed to start SemWifiP2pService."

    invoke-static {v8, v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3183
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_167b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3187
    :cond_167e
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v8, "android.hardware.wifi.aware"

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16a3

    .line 3189
    const-string v3, "StartOemWifiAware"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3191
    :try_start_168f
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.samsung.android.server.wifi.aware.SemWifiAwareService"

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1696
    .catchall {:try_start_168f .. :try_end_1696} :catchall_1697

    .line 3194
    goto :goto_16a0

    .line 3192
    :catchall_1697
    move-exception v0

    move-object v3, v0

    .line 3193
    .restart local v3    # "e":Ljava/lang/Throwable;
    const-string v8, "SystemServer"

    const-string v13, "Failed to start SemWifiAwareService."

    invoke-static {v8, v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3195
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_16a0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3200
    .end local v10    # "startRulesManagerService":Z
    .end local v11    # "hasFeatureFace":Z
    .end local v12    # "hasFeatureIris":Z
    .end local v16    # "intelligentBatterySaverService":Lcom/android/server/ibs/IntelligentBatterySaverService;
    .end local v47    # "hasPdb":Z
    .end local v53    # "hasGsi":Z
    .end local v58    # "hasFeatureFingerprint":Z
    :cond_16a3
    move-object/from16 v53, v15

    move-object/from16 v58, v17

    move-object/from16 v59, v18

    move-object/from16 v60, v19

    move-object/from16 v61, v20

    move-object/from16 v62, v21

    move-object/from16 v63, v25

    move-object/from16 v64, v27

    move-object/from16 v65, v42

    move-object/from16 v66, v44

    move-object/from16 v67, v46

    move-object/from16 v46, v48

    move-object/from16 v42, v9

    move-object/from16 v44, v26

    goto :goto_16e7

    .line 2262
    .end local v54    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v55    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v56    # "ipSecService":Lcom/android/server/IpSecService;
    .end local v57    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v2, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v9, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v10, "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .local v12, "safeMode":Z
    .restart local v13    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v14, "ipSecService":Lcom/android/server/IpSecService;
    .local v16, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v26, "urspService":Lcom/android/server/net/UrspService;
    .local v48, "networkManagement":Lcom/android/server/NetworkManagementService;
    :cond_16c0
    move-object/from16 v57, v2

    move-object v2, v13

    move-object v3, v14

    move v14, v12

    .end local v12    # "safeMode":Z
    .end local v13    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v2, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v3, "ipSecService":Lcom/android/server/IpSecService;
    .local v14, "safeMode":Z
    .restart local v57    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v56, v3

    move-object/from16 v54, v9

    move-object/from16 v53, v15

    move-object/from16 v58, v17

    move-object/from16 v59, v18

    move-object/from16 v60, v19

    move-object/from16 v61, v20

    move-object/from16 v62, v21

    move-object/from16 v63, v25

    move-object/from16 v64, v27

    move-object/from16 v65, v42

    move-object/from16 v66, v44

    move-object/from16 v67, v46

    move-object/from16 v55, v48

    move-object/from16 v46, v10

    move-object/from16 v44, v16

    move-object/from16 v42, v26

    .line 3200
    .end local v3    # "ipSecService":Lcom/android/server/IpSecService;
    .end local v9    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v10    # "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .end local v15    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v16    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v17    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v18    # "serviceDiscovery":Lcom/android/server/NsdService;
    .end local v19    # "notification":Landroid/app/INotificationManager;
    .end local v20    # "serial":Lcom/android/server/SerialService;
    .end local v21    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .end local v25    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .end local v26    # "urspService":Lcom/android/server/net/UrspService;
    .end local v27    # "semClipboardService":Lcom/android/server/semclipboard/SemClipboardService;
    .end local v48    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v42, "urspService":Lcom/android/server/net/UrspService;
    .local v44, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v46, "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .local v53, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v54    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v55    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v56    # "ipSecService":Lcom/android/server/IpSecService;
    .local v58, "connectivity":Lcom/android/server/ConnectivityService;
    .local v59, "serviceDiscovery":Lcom/android/server/NsdService;
    .local v60, "notification":Landroid/app/INotificationManager;
    .local v61, "serial":Lcom/android/server/SerialService;
    .local v62, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v63, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v64, "semClipboardService":Lcom/android/server/semclipboard/SemClipboardService;
    .local v65, "sLocation":Landroid/os/IBinder;
    .local v66, "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v67, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_16e7
    if-nez v36, :cond_16f8

    .line 3201
    const-string v3, "StartMediaProjectionManager"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3202
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3203
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3206
    :cond_16f8
    if-eqz v36, :cond_1756

    .line 3208
    const-string v3, "StartWearPowerService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3209
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.clockwork.power.WearPowerService"

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3210
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3212
    const-string v3, "StartWearConnectivityService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3213
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.clockwork.connectivity.WearConnectivityService"

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3214
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3216
    const-string v3, "StartWearDisplayService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3217
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.google.android.clockwork.display.WearDisplayService"

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3218
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3220
    const-string v3, "StartWearTimeService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3221
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.google.android.clockwork.time.WearTimeService"

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3222
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3224
    if-eqz v33, :cond_1747

    .line 3225
    const-string v3, "StartWearLeftyService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3226
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.google.android.clockwork.lefty.WearLeftyService"

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3227
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3230
    :cond_1747
    const-string v3, "StartWearGlobalActionsService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3231
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.clockwork.globalactions.GlobalActionsService"

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3232
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3235
    :cond_1756
    iget-object v3, v7, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.software.slices_disabled"

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_176f

    .line 3236
    const-string v3, "StartSliceManagerService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3237
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.slice.SliceManagerService$Lifecycle"

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3238
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3241
    :cond_176f
    if-nez v32, :cond_178f

    .line 3242
    const-string v3, "StartCameraServiceProxy"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3243
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3244
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3246
    const-string v3, "StartCameraServiceWorker"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3247
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3248
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3254
    :cond_178f
    const-string v3, "StartSpenGestureManagerService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3256
    :try_start_1794
    const-string/jumbo v3, "spengestureservice"

    new-instance v8, Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {v8, v4, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_179f
    .catchall {:try_start_1794 .. :try_end_179f} :catchall_17a0

    .line 3259
    goto :goto_17a8

    .line 3257
    :catchall_17a0
    move-exception v0

    move-object v3, v0

    .line 3258
    .local v3, "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "starting SpenGestureManagerService"

    invoke-direct {v7, v8, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3260
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_17a8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3264
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v8, "android.hardware.type.embedded"

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17c6

    .line 3265
    const-string v3, "StartIoTSystemService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3266
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.things.server.IoTSystemService"

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3267
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3271
    :cond_17c6
    const-string v3, "StartStatsCompanion"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3272
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.stats.StatsCompanion$Lifecycle"

    const-string v9, "/apex/com.android.os.statsd/javalib/service-statsd.jar"

    invoke-virtual {v3, v8, v9}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3274
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3277
    const-string v3, "StartStatsPullAtomService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3278
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.stats.pull.StatsPullAtomService"

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3279
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3282
    const-string v3, "StartIncidentCompanionService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3283
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3284
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3286
    if-eqz v14, :cond_17fc

    .line 3287
    iget-object v3, v7, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 3291
    :cond_17fc
    const-string v3, "StartMmsService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3292
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    move-object/from16 v68, v3

    check-cast v68, Lcom/android/server/MmsServiceBroker;

    .line 3293
    .end local v22    # "mmsService":Lcom/android/server/MmsServiceBroker;
    .local v68, "mmsService":Lcom/android/server/MmsServiceBroker;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3295
    iget-object v3, v7, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.software.autofill"

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1829

    .line 3296
    const-string v3, "StartAutoFillService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3297
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.autofill.AutofillManagerService"

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3298
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3304
    :cond_1829
    :try_start_1829
    new-instance v3, Lcom/android/server/ipm/PkgPredictorService;

    iget-object v8, v7, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v3, v4, v8}, Lcom/android/server/ipm/PkgPredictorService;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 3305
    .local v3, "pkgPredictorService":Lcom/android/server/ipm/PkgPredictorService;
    const-string v8, "PkgPredictorService"

    invoke-static {v8, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3308
    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager;->setAUF(Lcom/android/server/ipm/PkgPredictorService;)V

    .line 3311
    const-string v8, "SystemServer"

    const-string v9, "PkgPredictorService loaded"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_183f
    .catch Ljava/lang/Exception; {:try_start_1829 .. :try_end_183f} :catch_1841

    .line 3314
    nop

    .end local v3    # "pkgPredictorService":Lcom/android/server/ipm/PkgPredictorService;
    goto :goto_184a

    .line 3312
    :catch_1841
    move-exception v0

    move-object v3, v0

    .line 3313
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "SystemServer"

    const-string v9, "Failure adding PkgPredictorService"

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3319
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_184a
    invoke-direct {v7, v4}, Lcom/android/server/SystemServer;->isUCMSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1895

    .line 3322
    :try_start_1850
    const-string v3, "UCM Policy Service"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3323
    new-instance v3, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;-><init>(Landroid/content/Context;)V

    iput-object v3, v7, Lcom/android/server/SystemServer;->ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 3324
    const-string/jumbo v8, "knox_ucsm_policy"

    invoke-static {v8, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3325
    const-string/jumbo v3, "knox_ucsm_policy"

    iget-object v8, v7, Lcom/android/server/SystemServer;->ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v3, v8}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3326
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_186d
    .catch Ljava/lang/Exception; {:try_start_1850 .. :try_end_186d} :catch_186e

    .line 3329
    goto :goto_1877

    .line 3327
    :catch_186e
    move-exception v0

    move-object v3, v0

    .line 3328
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v8, "SystemServer"

    const-string v9, "Failure adding UniversalCredentialManagerService"

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3332
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1877
    :try_start_1877
    const-string v3, "CredentialManagerService Service"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3333
    new-instance v3, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;-><init>(Landroid/content/Context;)V

    iput-object v3, v7, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 3334
    const-string v8, "com.samsung.ucs.ucsservice"

    invoke-static {v8, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3335
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_188b
    .catch Ljava/lang/Exception; {:try_start_1877 .. :try_end_188b} :catch_188c

    .line 3338
    goto :goto_1895

    .line 3336
    :catch_188c
    move-exception v0

    move-object v3, v0

    .line 3337
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v8, "SystemServer"

    const-string v9, "Failure adding CredentialManagerService"

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3343
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1895
    :goto_1895
    const-string v3, "StartClipboardService"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3344
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3345
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3347
    const-string v3, "AppServiceManager"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3348
    iget-object v3, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/appbinding/AppBindingService$Lifecycle;

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3349
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3353
    const-string v3, "MakeVibratorServiceReady"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3355
    :try_start_18b8
    invoke-virtual {v1}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_18bb
    .catchall {:try_start_18b8 .. :try_end_18bb} :catchall_18bc

    .line 3358
    goto :goto_18c4

    .line 3356
    :catchall_18bc
    move-exception v0

    move-object v3, v0

    .line 3357
    .local v3, "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "making Vibrator Service ready"

    invoke-direct {v7, v8, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3359
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_18c4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3361
    const-string v3, "MakeLockSettingsServiceReady"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3362
    if-eqz v54, :cond_18da

    .line 3364
    :try_start_18ce
    invoke-interface/range {v54 .. v54}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_18d1
    .catchall {:try_start_18ce .. :try_end_18d1} :catchall_18d2

    .line 3367
    goto :goto_18da

    .line 3365
    :catchall_18d2
    move-exception v0

    move-object v3, v0

    .line 3366
    .restart local v3    # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "making Lock Settings Service ready"

    invoke-direct {v7, v8, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3369
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_18da
    :goto_18da
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3372
    iget-object v3, v7, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    if-eqz v3, :cond_18f8

    .line 3373
    const-string v3, "credentialManagerServiceReady"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3375
    :try_start_18e6
    iget-object v3, v7, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->systemReady()V
    :try_end_18eb
    .catch Ljava/lang/Exception; {:try_start_18e6 .. :try_end_18eb} :catch_18ec

    .line 3378
    goto :goto_18f5

    .line 3376
    :catch_18ec
    move-exception v0

    move-object v3, v0

    .line 3377
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "SystemServer"

    const-string v9, "Failed to call UCMService systemReady"

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3379
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_18f5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3384
    :cond_18f8
    const-string v3, "StartPersonaSystemready"

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3385
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v3

    .line 3386
    .local v3, "versionInfo":Landroid/os/Bundle;
    const-string/jumbo v8, "version"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "2.0"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1928

    .line 3388
    :try_start_1910
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/pm/PersonaManagerService;->systemReady()V
    :try_end_1913
    .catchall {:try_start_1910 .. :try_end_1913} :catchall_1914

    .line 3391
    goto :goto_191c

    .line 3389
    :catchall_1914
    move-exception v0

    move-object v8, v0

    .line 3390
    .restart local v8    # "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "making Persona Manager Service ready"

    invoke-direct {v7, v9, v8}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3394
    .end local v8    # "e":Ljava/lang/Throwable;
    :goto_191c
    :try_start_191c
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->systemReady()V
    :try_end_191f
    .catchall {:try_start_191c .. :try_end_191f} :catchall_1920

    .line 3397
    goto :goto_1928

    .line 3395
    :catchall_1920
    move-exception v0

    move-object v8, v0

    .line 3396
    .restart local v8    # "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "making KnoxMUMContainerPolicy Service ready"

    invoke-direct {v7, v9, v8}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3399
    .end local v8    # "e":Ljava/lang/Throwable;
    :cond_1928
    :goto_1928
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3403
    const-string v8, "StartBootPhaseLockSettingsReady"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3404
    const-string v8, "SystemServer"

    const-string v9, "!@Boot_EBS_D: PHASE_LOCK_SETTINGS_READY"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3405
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v9, 0x1e0

    invoke-virtual {v8, v6, v9}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3406
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3408
    const-string v8, "StartBootPhaseSystemServicesReady"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3409
    const-string v8, "SystemServer"

    const-string v9, "!@Boot_EBS_D: PHASE_SYSTEM_SERVICES_READY"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3410
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v9, 0x1f4

    invoke-virtual {v8, v6, v9}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3411
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3413
    const-string v8, "MakeWindowManagerServiceReady"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3415
    :try_start_195c
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_195f
    .catchall {:try_start_195c .. :try_end_195f} :catchall_1960

    .line 3418
    goto :goto_1968

    .line 3416
    :catchall_1960
    move-exception v0

    move-object v8, v0

    .line 3417
    .restart local v8    # "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "making Window Manager Service ready"

    invoke-direct {v7, v9, v8}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3419
    .end local v8    # "e":Ljava/lang/Throwable;
    :goto_1968
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3422
    const-class v8, Lcom/android/server/SystemService;

    monitor-enter v8

    .line 3423
    :try_start_196e
    sget-object v9, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;
    :try_end_1970
    .catchall {:try_start_196e .. :try_end_1970} :catchall_1c3f

    if-eqz v9, :cond_198e

    .line 3424
    :try_start_1972
    iget-object v9, v7, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    sget-object v10, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityManagerService;->schedulePendingSystemServerWtfs(Ljava/util/LinkedList;)V

    .line 3425
    const/4 v9, 0x0

    sput-object v9, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;
    :try_end_197c
    .catchall {:try_start_1972 .. :try_end_197c} :catchall_197d

    goto :goto_198e

    .line 3427
    :catchall_197d
    move-exception v0

    move-object/from16 v49, v1

    move-object/from16 v72, v2

    move-object/from16 v73, v3

    move-object/from16 v74, v4

    move-object/from16 v50, v5

    move-object v1, v6

    move/from16 v69, v14

    move-object v2, v0

    goto/16 :goto_1c4e

    :cond_198e
    :goto_198e
    :try_start_198e
    monitor-exit v8
    :try_end_198f
    .catchall {:try_start_198e .. :try_end_198f} :catchall_1c3f

    .line 3429
    if-eqz v14, :cond_199b

    .line 3430
    iget-object v8, v7, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 3433
    iget-object v8, v7, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->showRescuePartyDialog()V

    .line 3441
    :cond_199b
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v13

    .line 3442
    .local v13, "config":Landroid/content/res/Configuration;
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v11, v8

    .line 3443
    .local v11, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3444
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v13, v11}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3447
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v25

    .line 3448
    .local v25, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v8

    if-eqz v8, :cond_19c1

    .line 3449
    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 3452
    :cond_19c1
    const-string v8, "MakePowerManagerServiceReady"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3455
    :try_start_19c6
    iget-object v8, v7, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    iget-object v9, v7, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_19d1
    .catchall {:try_start_19c6 .. :try_end_19d1} :catchall_19d2

    .line 3458
    goto :goto_19da

    .line 3456
    :catchall_19d2
    move-exception v0

    move-object v8, v0

    .line 3457
    .restart local v8    # "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "making Power Manager Service ready"

    invoke-direct {v7, v9, v8}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3459
    .end local v8    # "e":Ljava/lang/Throwable;
    :goto_19da
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3462
    const-string v8, "StartPermissionPolicyService"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3463
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3464
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3465
    const-string v8, "MakePackageManagerServiceReady"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3466
    iget-object v8, v7, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerService;->systemReady()V

    .line 3467
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3469
    const-string v8, "MakeASKSManagerServiceReady"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3470
    iget-object v8, v7, Lcom/android/server/SystemServer;->mASKSManagerService:Lcom/android/server/asks/ASKSManagerService;

    invoke-virtual {v8}, Lcom/android/server/asks/ASKSManagerService;->systemReady()V

    .line 3471
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3473
    iget-wide v8, v7, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    const-wide/16 v15, 0x0

    cmp-long v8, v8, v15

    if-eqz v8, :cond_1a1b

    .line 3474
    const-string v8, "MakeIncrementalManagerServiceReady"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3475
    iget-wide v8, v7, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    invoke-static {v8, v9}, Lcom/android/server/SystemServer;->setIncrementalServiceSystemReady(J)V

    .line 3476
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3479
    :cond_1a1b
    const-string v8, "MakeDisplayManagerServiceReady"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3482
    :try_start_1a20
    iget-object v8, v7, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    iget-boolean v9, v7, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-virtual {v8, v14, v9}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_1a27
    .catchall {:try_start_1a20 .. :try_end_1a27} :catchall_1a28

    .line 3485
    goto :goto_1a30

    .line 3483
    :catchall_1a28
    move-exception v0

    move-object v8, v0

    .line 3484
    .restart local v8    # "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "making Display Manager Service ready"

    invoke-direct {v7, v9, v8}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3486
    .end local v8    # "e":Ljava/lang/Throwable;
    :goto_1a30
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3505
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v8, v14}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 3524
    const-string v8, "StartDeviceSpecificServices"

    invoke-virtual {v6, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3525
    iget-object v8, v7, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x107008d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 3527
    .local v15, "classes":[Ljava/lang/String;
    array-length v8, v15

    const/4 v9, 0x0

    :goto_1a4c
    if-ge v9, v8, :cond_1a91

    aget-object v10, v15, v9

    .line 3528
    .local v10, "className":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v49, v1

    .end local v1    # "vibrator":Lcom/android/server/VibratorService;
    .local v49, "vibrator":Lcom/android/server/VibratorService;
    const-string v1, "StartDeviceSpecificServices "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3530
    :try_start_1a66
    iget-object v1, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v1, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1a6b
    .catchall {:try_start_1a66 .. :try_end_1a6b} :catchall_1a6e

    .line 3533
    move-object/from16 v26, v3

    goto :goto_1a87

    .line 3531
    :catchall_1a6e
    move-exception v0

    move-object v1, v0

    .line 3532
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v3

    .end local v3    # "versionInfo":Landroid/os/Bundle;
    .local v26, "versionInfo":Landroid/os/Bundle;
    const-string/jumbo v3, "starting "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3534
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1a87
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3527
    .end local v10    # "className":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v26

    move-object/from16 v1, v49

    goto :goto_1a4c

    .line 3536
    .end local v26    # "versionInfo":Landroid/os/Bundle;
    .end local v49    # "vibrator":Lcom/android/server/VibratorService;
    .local v1, "vibrator":Lcom/android/server/VibratorService;
    .restart local v3    # "versionInfo":Landroid/os/Bundle;
    :cond_1a91
    move-object/from16 v49, v1

    move-object/from16 v26, v3

    .end local v1    # "vibrator":Lcom/android/server/VibratorService;
    .end local v3    # "versionInfo":Landroid/os/Bundle;
    .restart local v26    # "versionInfo":Landroid/os/Bundle;
    .restart local v49    # "vibrator":Lcom/android/server/VibratorService;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3539
    const-string v1, "DualAppManagerService"

    invoke-virtual {v6, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3541
    :try_start_1a9d
    iget-object v1, v7, Lcom/android/server/SystemServer;->mDualAppService:Lcom/android/server/DualAppManagerService;

    if-eqz v1, :cond_1aa6

    .line 3542
    iget-object v1, v7, Lcom/android/server/SystemServer;->mDualAppService:Lcom/android/server/DualAppManagerService;

    invoke-virtual {v1}, Lcom/android/server/DualAppManagerService;->systemReady()V
    :try_end_1aa6
    .catchall {:try_start_1a9d .. :try_end_1aa6} :catchall_1aa7

    .line 3546
    :cond_1aa6
    goto :goto_1aaf

    .line 3544
    :catchall_1aa7
    move-exception v0

    move-object v1, v0

    .line 3545
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "making DualAppManagerService ready"

    invoke-direct {v7, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3547
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1aaf
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3549
    const-string v1, "StartBootPhaseDeviceSpecificServicesReady"

    invoke-virtual {v6, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3550
    const-string v1, "SystemServer"

    const-string v3, "!@Boot_EBS_D: PHASE_DEVICE_SPECIFIC_SERVICES_READY"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3551
    iget-object v1, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v3, 0x208

    invoke-virtual {v1, v6, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3552
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3555
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v1

    if-eqz v1, :cond_1aeb

    .line 3556
    const-string v1, "MdfService"

    invoke-virtual {v6, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3558
    :try_start_1ad3
    const-string v1, "MdfService"

    new-instance v3, Lcom/android/server/MdfService;

    invoke-direct {v3, v4}, Lcom/android/server/MdfService;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1add
    .catchall {:try_start_1ad3 .. :try_end_1add} :catchall_1ade

    .line 3561
    goto :goto_1ae7

    .line 3559
    :catchall_1ade
    move-exception v0

    move-object v1, v0

    .line 3560
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v8, "Failed to add MdfService"

    invoke-static {v3, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3562
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1ae7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_1af2

    .line 3564
    :cond_1aeb
    const-string v1, "SystemServer"

    const-string v3, "MdfService is ready"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3570
    :goto_1af2
    iget-object v1, v7, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "att.devicehealth.support"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b4c

    .line 3571
    const-string v1, "System feature for device health found"

    invoke-virtual {v6, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3572
    new-instance v1, Ljava/io/File;

    const-string v3, "/efs/imei/salesCodeChanged"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1b41

    .line 3574
    :try_start_1b0e
    const-string v1, "com.samsung.iqi.IQIServiceBrokerExt"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 3575
    .local v1, "cls":Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 3576
    .local v3, "ctor":Ljava/lang/reflect/Constructor;
    const-string/jumbo v8, "startIqi"

    new-array v10, v9, [Ljava/lang/Class;

    invoke-virtual {v1, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 3577
    .local v8, "method":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    new-array v12, v10, [Ljava/lang/Object;

    aput-object v4, v12, v9

    invoke-virtual {v3, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    new-array v12, v9, [Ljava/lang/Object;

    invoke-virtual {v8, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b37
    .catch Ljava/lang/Exception; {:try_start_1b0e .. :try_end_1b37} :catch_1b39

    .line 3580
    nop

    .end local v1    # "cls":Ljava/lang/Class;
    .end local v3    # "ctor":Ljava/lang/reflect/Constructor;
    .end local v8    # "method":Ljava/lang/reflect/Method;
    goto :goto_1b48

    .line 3578
    :catch_1b39
    move-exception v0

    move-object v1, v0

    .line 3579
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SystemServer"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3580
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1b48

    .line 3582
    :cond_1b41
    const-string v1, "SystemServer"

    const-string v3, "On rebound, no need to start device health"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    :goto_1b48
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_1b53

    .line 3586
    :cond_1b4c
    const-string v1, "SystemServer"

    const-string v3, "System feature for device health not found"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3591
    :goto_1b53
    const-string/jumbo v1, "ro.config.ifaaversion"

    const-string v3, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 3592
    .local v3, "addifaaservice":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ro.config.ifaaversion] value is : "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "SystemServer"

    invoke-static {v8, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3593
    if-eqz v3, :cond_1bbc

    .line 3595
    :try_start_1b7a
    const-string v1, "IfaaService"

    invoke-virtual {v6, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3596
    const-string v1, "com.android.server.IfaaService"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 3597
    .local v1, "ifaaService":Ljava/lang/Class;
    if-nez v1, :cond_1b8f

    .line 3598
    const-string v8, "SystemServer"

    const-string/jumbo v9, "ifaaService does not exist"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3600
    :cond_1b8f
    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-virtual {v1, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 3601
    .local v8, "ifaaConstructor":Ljava/lang/reflect/Constructor;
    const-string v9, "IfaaService"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v10, v12

    invoke-virtual {v8, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/IBinder;

    invoke-static {v9, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3602
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_1baf
    .catchall {:try_start_1b7a .. :try_end_1baf} :catchall_1bb0

    .line 3606
    .end local v1    # "ifaaService":Ljava/lang/Class;
    .end local v8    # "ifaaConstructor":Ljava/lang/reflect/Constructor;
    goto :goto_1bbc

    .line 3603
    :catchall_1bb0
    move-exception v0

    move-object v1, v0

    .line 3604
    .local v1, "e":Ljava/lang/Throwable;
    const-string v8, "SystemServer"

    const-string v9, "Failed to add IfaaService."

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3605
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3612
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1bbc
    :goto_1bbc
    invoke-static {}, Lcom/samsung/android/server/continuity/SemContinuityService;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_1bdc

    .line 3613
    const-string v1, "SemContinuityService"

    invoke-virtual {v6, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3614
    iget-object v1, v7, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/samsung/android/server/continuity/SemContinuityService;

    invoke-virtual {v1, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3615
    invoke-static {}, Lcom/samsung/android/server/continuity/SemContinuityService;->isSupportedCopyPaste()Z

    move-result v1

    if-eqz v1, :cond_1bd9

    if-eqz v64, :cond_1bd9

    .line 3616
    invoke-virtual/range {v64 .. v64}, Lcom/android/server/semclipboard/SemClipboardService;->startMobileContinuity()V

    .line 3618
    :cond_1bd9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3623
    :cond_1bdc
    iget-object v1, v7, Lcom/android/server/SystemServer;->mBlobStoreServiceStart:Ljava/util/concurrent/Future;

    const-string/jumbo v8, "startBlobStoreManagerService"

    invoke-static {v1, v8}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 3627
    move-object/from16 v9, v55

    .line 3628
    .local v9, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v12, v53

    .line 3629
    .local v12, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v10, v44

    .line 3630
    .local v10, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v8, v58

    .line 3631
    .local v8, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v16, v66

    .line 3633
    .local v16, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v27, v15

    .end local v15    # "classes":[Ljava/lang/String;
    .local v27, "classes":[Ljava/lang/String;
    move-object/from16 v15, v65

    .line 3635
    .local v15, "sLocationF":Landroid/os/IBinder;
    move-object/from16 v17, v62

    .line 3636
    .local v17, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v18, v5

    .line 3638
    .local v18, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v19, v24

    .line 3640
    .local v19, "cameraMotorManagerF":Lcom/android/server/input/CameraMotorManagerService;
    move-object/from16 v20, v57

    .line 3641
    .local v20, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v21, v67

    .line 3642
    .local v21, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v22, v68

    .line 3643
    .local v22, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v34, v11

    .end local v11    # "metrics":Landroid/util/DisplayMetrics;
    .local v34, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v11, v56

    .line 3644
    .local v11, "ipSecServiceF":Lcom/android/server/IpSecService;
    move-object/from16 v50, v5

    .end local v5    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v50, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object v5, v2

    .line 3646
    .local v5, "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    iget-object v1, v7, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    move/from16 v69, v14

    .end local v14    # "safeMode":Z
    .local v1, "sAccessoryManagerF":Lcom/samsung/accessory/manager/SAccessoryManager;
    .local v69, "safeMode":Z
    move-object v14, v1

    .line 3647
    move-object/from16 v47, v13

    .end local v13    # "config":Landroid/content/res/Configuration;
    .local v47, "config":Landroid/content/res/Configuration;
    move-object/from16 v13, v42

    .line 3654
    .local v13, "urspServiceF":Lcom/android/server/net/UrspService;
    move-object/from16 v48, v5

    .end local v5    # "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    .local v48, "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    iget-object v5, v7, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v70, v5

    new-instance v5, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;

    move-object/from16 v71, v1

    .end local v1    # "sAccessoryManagerF":Lcom/samsung/accessory/manager/SAccessoryManager;
    .local v71, "sAccessoryManagerF":Lcom/samsung/accessory/manager/SAccessoryManager;
    move-object v1, v5

    move-object/from16 v72, v2

    .end local v2    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v72, "wm":Lcom/android/server/wm/WindowManagerService;
    move-object/from16 v2, p0

    move-object/from16 v73, v26

    move/from16 v26, v3

    .end local v3    # "addifaaservice":Z
    .local v26, "addifaaservice":Z
    .local v73, "versionInfo":Landroid/os/Bundle;
    move-object/from16 v3, p1

    move-object/from16 v74, v4

    .end local v4    # "context":Landroid/content/Context;
    .local v74, "context":Landroid/content/Context;
    move/from16 v6, v41

    move/from16 v7, v69

    move-object/from16 v76, v5

    move-object/from16 v5, v48

    move-object/from16 v75, v70

    .end local v48    # "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    .restart local v5    # "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    invoke-direct/range {v1 .. v22}, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;ZZLcom/android/server/ConnectivityService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/UrspService;Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/input/CameraMotorManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    move-object/from16 v1, p1

    move-object/from16 v2, v75

    move-object/from16 v3, v76

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 4303
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4304
    return-void

    .line 3427
    .end local v8    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v9    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v10    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "ipSecServiceF":Lcom/android/server/IpSecService;
    .end local v12    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v13    # "urspServiceF":Lcom/android/server/net/UrspService;
    .end local v15    # "sLocationF":Landroid/os/IBinder;
    .end local v16    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v17    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v18    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v19    # "cameraMotorManagerF":Lcom/android/server/input/CameraMotorManagerService;
    .end local v20    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v21    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v22    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v25    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v26    # "addifaaservice":Z
    .end local v27    # "classes":[Ljava/lang/String;
    .end local v34    # "metrics":Landroid/util/DisplayMetrics;
    .end local v47    # "config":Landroid/content/res/Configuration;
    .end local v49    # "vibrator":Lcom/android/server/VibratorService;
    .end local v50    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v69    # "safeMode":Z
    .end local v71    # "sAccessoryManagerF":Lcom/samsung/accessory/manager/SAccessoryManager;
    .end local v72    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v73    # "versionInfo":Landroid/os/Bundle;
    .end local v74    # "context":Landroid/content/Context;
    .local v1, "vibrator":Lcom/android/server/VibratorService;
    .restart local v2    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v3, "versionInfo":Landroid/os/Bundle;
    .restart local v4    # "context":Landroid/content/Context;
    .local v5, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v14    # "safeMode":Z
    :catchall_1c3f
    move-exception v0

    move-object/from16 v49, v1

    move-object/from16 v72, v2

    move-object/from16 v73, v3

    move-object/from16 v74, v4

    move-object/from16 v50, v5

    move-object v1, v6

    move/from16 v69, v14

    move-object v2, v0

    .end local v1    # "vibrator":Lcom/android/server/VibratorService;
    .end local v2    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v3    # "versionInfo":Landroid/os/Bundle;
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v14    # "safeMode":Z
    .restart local v49    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v50    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v69    # "safeMode":Z
    .restart local v72    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v73    # "versionInfo":Landroid/os/Bundle;
    .restart local v74    # "context":Landroid/content/Context;
    :goto_1c4e
    :try_start_1c4e
    monitor-exit v8
    :try_end_1c4f
    .catchall {:try_start_1c4e .. :try_end_1c4f} :catchall_1c50

    throw v2

    :catchall_1c50
    move-exception v0

    move-object v2, v0

    goto :goto_1c4e

    .line 2020
    .end local v42    # "urspService":Lcom/android/server/net/UrspService;
    .end local v44    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v46    # "mKnoxVpnEngineService":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .end local v49    # "vibrator":Lcom/android/server/VibratorService;
    .end local v50    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v51    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v52    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v53    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v54    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v55    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v56    # "ipSecService":Lcom/android/server/IpSecService;
    .end local v57    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v58    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v59    # "serviceDiscovery":Lcom/android/server/NsdService;
    .end local v60    # "notification":Landroid/app/INotificationManager;
    .end local v61    # "serial":Lcom/android/server/SerialService;
    .end local v62    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .end local v63    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .end local v64    # "semClipboardService":Lcom/android/server/semclipboard/SemClipboardService;
    .end local v65    # "sLocation":Landroid/os/IBinder;
    .end local v66    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v67    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v68    # "mmsService":Lcom/android/server/MmsServiceBroker;
    .end local v69    # "safeMode":Z
    .end local v72    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v73    # "versionInfo":Landroid/os/Bundle;
    .end local v74    # "context":Landroid/content/Context;
    .restart local v1    # "vibrator":Lcom/android/server/VibratorService;
    .local v2, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v5    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v13, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v14, "ipSecService":Lcom/android/server/IpSecService;
    .local v15, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v16, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v17, "connectivity":Lcom/android/server/ConnectivityService;
    .local v18, "serviceDiscovery":Lcom/android/server/NsdService;
    .local v20, "serial":Lcom/android/server/SerialService;
    .local v21, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v22, "mmsService":Lcom/android/server/MmsServiceBroker;
    .local v25, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v26, "urspService":Lcom/android/server/net/UrspService;
    .local v27, "semClipboardService":Lcom/android/server/semclipboard/SemClipboardService;
    .local v47, "storageManager":Landroid/os/storage/IStorageManager;
    .local v48, "networkManagement":Lcom/android/server/NetworkManagementService;
    :catchall_1c53
    move-exception v0

    move-object/from16 v49, v1

    move-object/from16 v57, v2

    move-object/from16 v74, v4

    move-object/from16 v50, v5

    move-object v1, v6

    move-object/from16 v72, v13

    move-object v3, v14

    move-object v4, v0

    move-object/from16 v10, v29

    move-object/from16 v2, v40

    move-object/from16 v11, v43

    move-object/from16 v12, v45

    move-object/from16 v29, v49

    move-object/from16 v8, v50

    move-object/from16 v9, v57

    move-object/from16 v19, v72

    .end local v1    # "vibrator":Lcom/android/server/VibratorService;
    .end local v2    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v13    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v14    # "ipSecService":Lcom/android/server/IpSecService;
    .local v3, "ipSecService":Lcom/android/server/IpSecService;
    .restart local v49    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v50    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v57    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v72    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v74    # "context":Landroid/content/Context;
    goto/16 :goto_1d61

    .end local v3    # "ipSecService":Lcom/android/server/IpSecService;
    .end local v49    # "vibrator":Lcom/android/server/VibratorService;
    .end local v50    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v57    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v72    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v74    # "context":Landroid/content/Context;
    .restart local v1    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v2    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v5    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v14    # "ipSecService":Lcom/android/server/IpSecService;
    .local v19, "wm":Lcom/android/server/wm/WindowManagerService;
    :catchall_1c73
    move-exception v0

    move-object/from16 v49, v1

    move-object/from16 v57, v2

    move-object/from16 v74, v4

    move-object/from16 v50, v5

    move-object v1, v6

    move-object v3, v14

    move-object v4, v0

    move-object/from16 v10, v29

    move-object/from16 v2, v40

    move-object/from16 v11, v43

    move-object/from16 v12, v45

    move-object/from16 v29, v49

    move-object/from16 v8, v50

    move-object/from16 v9, v57

    .end local v1    # "vibrator":Lcom/android/server/VibratorService;
    .end local v2    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v14    # "ipSecService":Lcom/android/server/IpSecService;
    .restart local v3    # "ipSecService":Lcom/android/server/IpSecService;
    .restart local v49    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v50    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v57    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v74    # "context":Landroid/content/Context;
    goto/16 :goto_1d61

    .end local v3    # "ipSecService":Lcom/android/server/IpSecService;
    .end local v40    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v49    # "vibrator":Lcom/android/server/VibratorService;
    .end local v50    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v57    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v74    # "context":Landroid/content/Context;
    .restart local v1    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v2    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v4    # "context":Landroid/content/Context;
    .local v12, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v13, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v14    # "ipSecService":Lcom/android/server/IpSecService;
    :catchall_1c8f
    move-exception v0

    move-object/from16 v49, v1

    move-object/from16 v57, v2

    move-object/from16 v74, v4

    move-object v1, v6

    move-object/from16 v50, v12

    move-object/from16 v40, v13

    move-object v3, v14

    move-object v4, v0

    move-object/from16 v10, v29

    move-object/from16 v2, v40

    move-object/from16 v11, v43

    move-object/from16 v12, v45

    move-object/from16 v29, v49

    move-object/from16 v8, v50

    move-object/from16 v9, v57

    .end local v1    # "vibrator":Lcom/android/server/VibratorService;
    .end local v2    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v4    # "context":Landroid/content/Context;
    .end local v12    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v13    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v14    # "ipSecService":Lcom/android/server/IpSecService;
    .restart local v3    # "ipSecService":Lcom/android/server/IpSecService;
    .restart local v40    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v49    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v50    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v57    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v74    # "context":Landroid/content/Context;
    goto/16 :goto_1d61

    .end local v40    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v47    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v48    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v49    # "vibrator":Lcom/android/server/VibratorService;
    .end local v50    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v57    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v74    # "context":Landroid/content/Context;
    .restart local v1    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v2    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v3, "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v4    # "context":Landroid/content/Context;
    .local v5, "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v12    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v13    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v14    # "ipSecService":Lcom/android/server/IpSecService;
    :catchall_1cad
    move-exception v0

    move-object/from16 v49, v1

    move-object/from16 v57, v2

    move-object/from16 v47, v3

    move-object/from16 v74, v4

    move-object/from16 v48, v5

    move-object v1, v6

    move-object/from16 v50, v12

    move-object/from16 v40, v13

    move-object v3, v14

    move-object v4, v0

    move-object/from16 v10, v29

    move-object/from16 v2, v40

    move-object/from16 v11, v43

    move-object/from16 v12, v45

    move-object/from16 v29, v49

    move-object/from16 v8, v50

    move-object/from16 v9, v57

    .end local v1    # "vibrator":Lcom/android/server/VibratorService;
    .end local v2    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v12    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v13    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v14    # "ipSecService":Lcom/android/server/IpSecService;
    .local v3, "ipSecService":Lcom/android/server/IpSecService;
    .restart local v40    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v47    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v48    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v49    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v50    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v57    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v74    # "context":Landroid/content/Context;
    goto/16 :goto_1d61

    .end local v40    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v47    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v48    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v49    # "vibrator":Lcom/android/server/VibratorService;
    .end local v50    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v57    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v74    # "context":Landroid/content/Context;
    .restart local v1    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v2    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v3, "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v5    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v8, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v13    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v14    # "ipSecService":Lcom/android/server/IpSecService;
    :catchall_1ccf
    move-exception v0

    move-object/from16 v49, v1

    move-object/from16 v57, v2

    move-object/from16 v47, v3

    move-object/from16 v74, v4

    move-object/from16 v48, v5

    move-object v1, v6

    move-object/from16 v40, v13

    move-object v3, v14

    move-object v4, v0

    move-object/from16 v10, v29

    move-object/from16 v2, v40

    move-object/from16 v11, v43

    move-object/from16 v12, v45

    move-object/from16 v29, v49

    move-object/from16 v9, v57

    .end local v1    # "vibrator":Lcom/android/server/VibratorService;
    .end local v2    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v13    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v14    # "ipSecService":Lcom/android/server/IpSecService;
    .local v3, "ipSecService":Lcom/android/server/IpSecService;
    .restart local v40    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v47    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v48    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v49    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v57    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v74    # "context":Landroid/content/Context;
    goto/16 :goto_1d61

    .end local v29    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v40    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v47    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v48    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v49    # "vibrator":Lcom/android/server/VibratorService;
    .end local v57    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v74    # "context":Landroid/content/Context;
    .restart local v1    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v2    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v3, "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v5    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v10, "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v13    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v14    # "ipSecService":Lcom/android/server/IpSecService;
    :catchall_1ced
    move-exception v0

    move-object/from16 v49, v1

    move-object/from16 v57, v2

    move-object/from16 v47, v3

    move-object/from16 v74, v4

    move-object/from16 v48, v5

    move-object v1, v6

    move-object/from16 v40, v13

    move-object v3, v14

    move-object v4, v0

    move-object/from16 v2, v40

    move-object/from16 v11, v43

    move-object/from16 v12, v45

    move-object/from16 v29, v49

    move-object/from16 v9, v57

    .end local v1    # "vibrator":Lcom/android/server/VibratorService;
    .end local v2    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v13    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v14    # "ipSecService":Lcom/android/server/IpSecService;
    .local v3, "ipSecService":Lcom/android/server/IpSecService;
    .restart local v40    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v47    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v48    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v49    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v57    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v74    # "context":Landroid/content/Context;
    goto/16 :goto_1d61

    .end local v40    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v47    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v48    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v49    # "vibrator":Lcom/android/server/VibratorService;
    .end local v57    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v74    # "context":Landroid/content/Context;
    .restart local v1    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v2    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v3, "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v5    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v14    # "ipSecService":Lcom/android/server/IpSecService;
    .local v44, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    :catchall_1d09
    move-exception v0

    move-object/from16 v49, v1

    move-object/from16 v57, v2

    move-object/from16 v47, v3

    move-object/from16 v74, v4

    move-object/from16 v48, v5

    move-object v1, v6

    move-object v3, v14

    move-object v4, v0

    move-object/from16 v11, v43

    move-object/from16 v2, v44

    move-object/from16 v12, v45

    move-object/from16 v29, v49

    move-object/from16 v9, v57

    .end local v1    # "vibrator":Lcom/android/server/VibratorService;
    .end local v2    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v14    # "ipSecService":Lcom/android/server/IpSecService;
    .local v3, "ipSecService":Lcom/android/server/IpSecService;
    .restart local v47    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v48    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v49    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v57    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v74    # "context":Landroid/content/Context;
    goto :goto_1d61

    .end local v47    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v48    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v49    # "vibrator":Lcom/android/server/VibratorService;
    .end local v57    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v74    # "context":Landroid/content/Context;
    .restart local v2    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v3, "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v5    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v14    # "ipSecService":Lcom/android/server/IpSecService;
    .local v29, "vibrator":Lcom/android/server/VibratorService;
    :catchall_1d22
    move-exception v0

    move-object/from16 v57, v2

    move-object/from16 v47, v3

    move-object/from16 v74, v4

    move-object/from16 v48, v5

    move-object v1, v6

    move-object v3, v14

    move-object v4, v0

    move-object/from16 v11, v43

    move-object/from16 v2, v44

    move-object/from16 v12, v45

    move-object/from16 v9, v57

    .end local v2    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v14    # "ipSecService":Lcom/android/server/IpSecService;
    .local v3, "ipSecService":Lcom/android/server/IpSecService;
    .restart local v47    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v48    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v57    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v74    # "context":Landroid/content/Context;
    goto :goto_1d61

    .end local v43    # "mPersonaService":Lcom/android/server/pm/PersonaManagerService;
    .end local v45    # "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .end local v47    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v48    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v57    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v74    # "context":Landroid/content/Context;
    .restart local v2    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v3, "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v5    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v11, "mPersonaService":Lcom/android/server/pm/PersonaManagerService;
    .local v12, "mKnoxMUMContainerPolicyService":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .restart local v14    # "ipSecService":Lcom/android/server/IpSecService;
    :catchall_1d37
    move-exception v0

    move-object/from16 v57, v2

    move-object/from16 v47, v3

    move-object/from16 v74, v4

    move-object/from16 v48, v5

    move-object v1, v6

    move-object v3, v14

    move-object v4, v0

    move-object/from16 v2, v44

    move-object/from16 v9, v57

    .end local v2    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v14    # "ipSecService":Lcom/android/server/IpSecService;
    .local v3, "ipSecService":Lcom/android/server/IpSecService;
    .restart local v47    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v48    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v57    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v74    # "context":Landroid/content/Context;
    goto :goto_1d61

    .end local v47    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v48    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v57    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v74    # "context":Landroid/content/Context;
    .local v3, "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v5    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v9, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v14    # "ipSecService":Lcom/android/server/IpSecService;
    :catchall_1d48
    move-exception v0

    move-object/from16 v47, v3

    move-object/from16 v74, v4

    move-object/from16 v48, v5

    move-object v1, v6

    move-object v3, v14

    move-object v4, v0

    move-object/from16 v2, v44

    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v14    # "ipSecService":Lcom/android/server/IpSecService;
    .local v3, "ipSecService":Lcom/android/server/IpSecService;
    .restart local v47    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v48    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v74    # "context":Landroid/content/Context;
    goto :goto_1d61

    .end local v44    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v47    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v48    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v74    # "context":Landroid/content/Context;
    .local v2, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v3, "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v5    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v14    # "ipSecService":Lcom/android/server/IpSecService;
    :catchall_1d55
    move-exception v0

    move-object/from16 v44, v2

    move-object/from16 v47, v3

    move-object/from16 v74, v4

    move-object/from16 v48, v5

    move-object v1, v6

    move-object v3, v14

    move-object v4, v0

    .line 2021
    .end local v5    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v14    # "ipSecService":Lcom/android/server/IpSecService;
    .local v3, "ipSecService":Lcom/android/server/IpSecService;
    .local v4, "e":Ljava/lang/Throwable;
    .restart local v47    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v48    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v74    # "context":Landroid/content/Context;
    :goto_1d61
    const-string v5, "System"

    const-string v6, "******************************************"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    const-string v5, "System"

    const-string v6, "************ Failure starting core service"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    throw v4
.end method

.method private startRCPService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4439
    const-string/jumbo v0, "startRCPService | context is null"

    const-string/jumbo v1, "startRCPService | Fail to start service"

    const/4 v2, 0x1

    .line 4440
    .local v2, "enabledContainer":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRCPService | original value for enabledContainer : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SystemServer"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4441
    const/4 v3, 0x1

    if-ne v3, v2, :cond_e6

    .line 4442
    const-string/jumbo v5, "persist.sys.knox.userinfo"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4443
    .local v5, "knoxUserInfo":Ljava/lang/String;
    const/4 v6, 0x0

    if-eqz v5, :cond_33

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_33

    move v7, v3

    goto :goto_34

    :cond_33
    move v7, v6

    .line 4445
    .local v7, "isKnoxPresentInDevice":Z
    :goto_34
    const-string/jumbo v8, "persist.sys.knox.device_owner"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4446
    .local v8, "deviceOwner":Ljava/lang/String;
    if-eqz v8, :cond_47

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_47

    goto :goto_48

    :cond_47
    move v3, v6

    .line 4447
    .local v3, "isDeviceOwnerEnabled":Z
    :goto_48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startRCPService | KnoxPresentInDevice : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", DoEnabled : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4449
    :try_start_65
    const-string v6, "RCPManagerService"

    invoke-virtual {p2, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_65 .. :try_end_6a} :catchall_97

    .line 4450
    const-string/jumbo v6, "rcp"

    if-nez v7, :cond_7e

    if-eqz v3, :cond_72

    goto :goto_7e

    .line 4461
    :cond_72
    :try_start_72
    const-string/jumbo v9, "startRCPService | add Lazy Service : RCPManagerService , rcp"

    invoke-static {v4, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4462
    const-class v9, Lcom/android/server/RCPManagerService;

    invoke-static {v6, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_96

    .line 4451
    :cond_7e
    :goto_7e
    const-string/jumbo v9, "startRCPService | add Service : RCPManagerService , rcp"

    invoke-static {v4, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4452
    if-nez p1, :cond_8d

    .line 4454
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_72 .. :try_end_89} :catchall_97

    .line 4467
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4455
    return-void

    .line 4457
    :cond_8d
    :try_start_8d
    new-instance v9, Lcom/android/server/RCPManagerService;

    invoke-direct {v9, p1}, Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V

    .line 4458
    .local v9, "rcpManagerService":Lcom/android/server/RCPManagerService;
    invoke-static {v6, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_95
    .catchall {:try_start_8d .. :try_end_95} :catchall_97

    .line 4459
    .end local v9    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    nop

    .line 4467
    :goto_96
    goto :goto_9c

    .line 4464
    :catchall_97
    move-exception v6

    .line 4465
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_98
    invoke-static {v4, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_e1

    .line 4467
    nop

    .end local v6    # "e":Ljava/lang/Throwable;
    :goto_9c
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4468
    nop

    .line 4470
    :try_start_a0
    const-string v6, "KnoxMUMRCPPolicyService"

    invoke-virtual {p2, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_a5
    .catchall {:try_start_a0 .. :try_end_a5} :catchall_d2

    .line 4471
    const-string/jumbo v6, "mum_container_rcp_policy"

    if-nez v7, :cond_b9

    if-eqz v3, :cond_ad

    goto :goto_b9

    .line 4482
    :cond_ad
    :try_start_ad
    const-string/jumbo v0, "startRCPService | add Lazy Service : KnoxMUMRCPPolicyService , mumrcppolicy"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4483
    const-class v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_d1

    .line 4472
    :cond_b9
    :goto_b9
    const-string/jumbo v9, "startRCPService | add Service : KnoxMUMRCPPolicyService , mumrcppolicy"

    invoke-static {v4, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4473
    if-nez p1, :cond_c8

    .line 4475
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c4
    .catchall {:try_start_ad .. :try_end_c4} :catchall_d2

    .line 4488
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4476
    return-void

    .line 4478
    :cond_c8
    :try_start_c8
    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;-><init>(Landroid/content/Context;)V

    .line 4479
    .local v0, "knoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d0
    .catchall {:try_start_c8 .. :try_end_d0} :catchall_d2

    .line 4480
    .end local v0    # "knoxMUMRCPPolicyService":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    nop

    .line 4488
    :goto_d1
    goto :goto_d7

    .line 4485
    :catchall_d2
    move-exception v0

    .line 4486
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_d3
    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d6
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_dc

    .line 4488
    nop

    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_d7
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4489
    nop

    .line 4490
    .end local v3    # "isDeviceOwnerEnabled":Z
    .end local v5    # "knoxUserInfo":Ljava/lang/String;
    .end local v7    # "isKnoxPresentInDevice":Z
    .end local v8    # "deviceOwner":Ljava/lang/String;
    goto :goto_f2

    .line 4488
    .restart local v3    # "isDeviceOwnerEnabled":Z
    .restart local v5    # "knoxUserInfo":Ljava/lang/String;
    .restart local v7    # "isKnoxPresentInDevice":Z
    .restart local v8    # "deviceOwner":Ljava/lang/String;
    :catchall_dc
    move-exception v0

    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4489
    throw v0

    .line 4467
    :catchall_e1
    move-exception v0

    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4468
    throw v0

    .line 4492
    .end local v3    # "isDeviceOwnerEnabled":Z
    .end local v5    # "knoxUserInfo":Ljava/lang/String;
    .end local v7    # "isKnoxPresentInDevice":Z
    .end local v8    # "deviceOwner":Ljava/lang/String;
    :cond_e6
    const-string/jumbo v0, "startRCPService | RCPManagerService , rcp is not supported"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4493
    const-string/jumbo v0, "startRCPService | KnoxMUMRCPPolicyService , mumrcppolicy is not supported"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4496
    :goto_f2
    return-void
.end method

.method private startResourceOverlayService()V
    .registers 6

    .line 4427
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 4428
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4429
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.localeoverlaymanager"

    const-string v4, "com.samsung.android.localeoverlaymanager.ResourceOverlayService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4431
    const-string/jumbo v2, "isStartedBySystemServer"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4432
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 4433
    return-void
.end method

.method private static native startSensorService()V
.end method

.method private startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4313
    const v0, 0x10402cf

    invoke-direct {p0, p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 4314
    const-string v0, "SystemServer"

    const-string v1, "SystemCaptionsManagerService disabled because resource is not overlaid"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4315
    return-void

    .line 4318
    :cond_11
    const-string v0, "StartSystemCaptionsManagerService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4319
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.systemcaptions.SystemCaptionsManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 4320
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4321
    return-void
.end method

.method private static startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .line 4380
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 4381
    .local v0, "pm":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4382
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4383
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4385
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 4386
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    .line 4387
    return-void
.end method

.method private startThemeService()V
    .registers 6

    .line 4415
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 4416
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4417
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.themecenter"

    const-string v4, "com.samsung.android.thememanager.ThemeManagerService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4419
    iget-boolean v2, p0, Lcom/android/server/SystemServer;->safeModeValueForTheme:Z

    const-string/jumbo v3, "safeMode"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4420
    const-string/jumbo v2, "isStartedBySystemServer"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4421
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 4422
    return-void
.end method


# virtual methods
.method public synthetic lambda$startOtherServices$3$SystemServer()V
    .registers 4

    .line 2949
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 2950
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string/jumbo v1, "startBlobStoreManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2951
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.blob.BlobStoreManagerService"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2952
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2953
    return-void
.end method

.method public synthetic lambda$startOtherServices$4$SystemServer()V
    .registers 4

    .line 3673
    const-string v0, "SystemServer"

    const-string v1, "WebViewFactoryPreparation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3674
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 3675
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3676
    iget-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string v2, "Zygote preload"

    invoke-static {v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 3677
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 3678
    iget-object v1, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v1}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    .line 3679
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3680
    return-void
.end method

.method public synthetic lambda$startOtherServices$5$SystemServer(Landroid/content/Context;Z)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "disableDSMS"    # Z

    .line 3788
    const-string v0, "SystemServer"

    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v1

    .line 3803
    .local v1, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string v2, "SamsungKeyProvisioningManagerService"

    invoke-virtual {v1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3805
    :try_start_b
    const-class v3, Lcom/android/server/SamsungKeyProvisioningManagerService;

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    .line 3809
    goto :goto_17

    .line 3807
    :catchall_11
    move-exception v2

    .line 3808
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "Failure starting Samsung Key Provisioning Manager Service "

    invoke-direct {p0, v3, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3810
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_17
    invoke-virtual {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3818
    const-string v2, "SemService"

    invoke-virtual {v1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3820
    :try_start_1f
    const-class v3, Lcom/android/server/SemService;

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_25

    .line 3824
    goto :goto_2b

    .line 3822
    :catchall_25
    move-exception v2

    .line 3823
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string v3, "Failure starting SemService "

    invoke-direct {p0, v3, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3825
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_2b
    invoke-virtual {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3830
    const-string v2, "Email Keystore Service"

    invoke-virtual {v1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3832
    :try_start_33
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3833
    const-string v2, "emailksproxy"

    const-class v3, Lcom/android/server/emailksproxy/EmailKeystoreService;

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_3e

    .line 3836
    goto :goto_44

    .line 3834
    :catchall_3e
    move-exception v2

    .line 3835
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string v3, "Failure starting Email Keystore Service"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3837
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_44
    invoke-virtual {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3842
    const-string v2, "IcccManagerService"

    invoke-virtual {v1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3844
    :try_start_4c
    const-string/jumbo v2, "iccc"

    new-instance v3, Lcom/android/server/SystemServer$5;

    invoke-direct {v3, p0}, Lcom/android/server/SystemServer$5;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IServiceCreator;)V
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_58

    .line 3852
    goto :goto_5e

    .line 3850
    :catchall_58
    move-exception v2

    .line 3851
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string v3, "Failure starting IcccManagerService "

    invoke-direct {p0, v3, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3853
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_5e
    invoke-virtual {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3887
    if-nez p2, :cond_77

    .line 3888
    const-string v2, "DsmsService"

    invoke-virtual {v1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3890
    :try_start_68
    const-string v3, "dsms"

    const-class v4, Lcom/samsung/android/jdsms/DsmsService;

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_70

    .line 3893
    goto :goto_74

    .line 3891
    :catchall_70
    move-exception v3

    .line 3892
    .local v3, "e":Ljava/lang/Throwable;
    invoke-direct {p0, v2, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3894
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_74
    invoke-virtual {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3900
    :cond_77
    const-string v2, "SemAuthnrService"

    invoke-virtual {v1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3902
    :try_start_7c
    const-class v3, Lcom/samsung/android/authnrservice/service/SemAuthnrService;

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_81
    .catchall {:try_start_7c .. :try_end_81} :catchall_82

    .line 3905
    goto :goto_88

    .line 3903
    :catchall_82
    move-exception v2

    .line 3904
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string v3, "Failed to add SemAuthnrService."

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3906
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_88
    invoke-virtual {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3928
    return-void
.end method

.method public synthetic lambda$startOtherServices$7$SystemServer(Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;ZZLcom/android/server/ConnectivityService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/UrspService;Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/input/CameraMotorManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .registers 45
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "windowManagerF"    # Lcom/android/server/wm/WindowManagerService;
    .param p4, "disableDSMS"    # Z
    .param p5, "safeMode"    # Z
    .param p6, "connectivityF"    # Lcom/android/server/ConnectivityService;
    .param p7, "networkManagementF"    # Lcom/android/server/NetworkManagementService;
    .param p8, "networkPolicyF"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p9, "ipSecServiceF"    # Lcom/android/server/IpSecService;
    .param p10, "networkStatsF"    # Lcom/android/server/net/NetworkStatsService;
    .param p11, "urspServiceF"    # Lcom/android/server/net/UrspService;
    .param p12, "sAccessoryManagerF"    # Lcom/samsung/accessory/manager/SAccessoryManager;
    .param p13, "sLocationF"    # Landroid/os/IBinder;
    .param p14, "countryDetectorF"    # Lcom/android/server/CountryDetectorService;
    .param p15, "networkTimeUpdaterF"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p16, "inputManagerF"    # Lcom/android/server/input/InputManagerService;
    .param p17, "cameraMotorManagerF"    # Lcom/android/server/input/CameraMotorManagerService;
    .param p18, "telephonyRegistryF"    # Lcom/android/server/TelephonyRegistry;
    .param p19, "mediaRouterF"    # Lcom/android/server/media/MediaRouterService;
    .param p20, "mmsServiceF"    # Lcom/android/server/MmsServiceBroker;

    .line 3655
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p6

    move-object/from16 v5, p8

    const-string/jumbo v6, "knox_ccm_policy"

    const-string v7, "TIMA Service"

    const-string v8, "SystemServer"

    const-string v0, "Making services ready"

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3656
    const-string v0, "StartActivityManagerReadyPhase"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3657
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v9, 0x226

    invoke-virtual {v0, v2, v9}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3658
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3659
    const-string v0, "StartObservingNativeCrashes"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3661
    :try_start_2a
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_30

    .line 3664
    goto :goto_37

    .line 3662
    :catchall_30
    move-exception v0

    .line 3663
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "observing native crashes"

    invoke-direct {v1, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3665
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_37
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3669
    const-string v9, "WebViewFactoryPreparation"

    .line 3670
    .local v9, "WEBVIEW_PREPARATION":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3671
    .local v0, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-boolean v10, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z

    const-string v11, "WebViewFactoryPreparation"

    if-nez v10, :cond_52

    iget-object v10, v1, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    if-eqz v10, :cond_52

    .line 3672
    new-instance v10, Lcom/android/server/-$$Lambda$SystemServer$72PvntN28skIthlRYR9w5EhsdX8;

    invoke-direct {v10, v1}, Lcom/android/server/-$$Lambda$SystemServer$72PvntN28skIthlRYR9w5EhsdX8;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v10, v11}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    move-object v10, v0

    goto :goto_53

    .line 3683
    :cond_52
    move-object v10, v0

    .end local v0    # "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .local v10, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_53
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v12, "android.hardware.type.automotive"

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 3684
    const-string v0, "StartCarServiceHelperService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3685
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v12, "com.android.internal.car.CarServiceHelperService"

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3686
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3690
    :cond_6c
    const-string v0, "SemMdnieManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3692
    const/4 v12, 0x0

    const/4 v13, 0x1

    :try_start_73
    const-string/jumbo v0, "mDNIe Service"

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3693
    const/4 v0, 0x0

    .line 3694
    .local v0, "mdnieClass":Ljava/lang/Class;
    const-string v14, "com.samsung.android.hardware.display.SemMdnieManagerService"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    move-object v0, v14

    .line 3695
    if-nez v0, :cond_89

    .line 3696
    const-string v14, "Mdnie Service does not exist"

    invoke-static {v8, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    .line 3698
    :cond_89
    new-array v14, v13, [Ljava/lang/Class;

    const-class v15, Landroid/content/Context;

    aput-object v15, v14, v12

    invoke-virtual {v0, v14}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v14

    .line 3699
    .local v14, "constructor":Ljava/lang/reflect/Constructor;
    new-array v15, v13, [Ljava/lang/Object;

    aput-object v3, v15, v12

    invoke-virtual {v14, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/IBinder;

    .line 3700
    .local v15, "mdnieService":Landroid/os/IBinder;
    const-string/jumbo v12, "mDNIe"

    invoke-static {v12, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a3
    .catchall {:try_start_73 .. :try_end_a3} :catchall_a4

    .line 3704
    .end local v0    # "mdnieClass":Ljava/lang/Class;
    .end local v14    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v15    # "mdnieService":Landroid/os/IBinder;
    :goto_a3
    goto :goto_aa

    .line 3702
    :catchall_a4
    move-exception v0

    .line 3703
    .local v0, "e":Ljava/lang/Throwable;
    const-string v12, "Failed To Start Mdnie Service "

    invoke-direct {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3705
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_aa
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3708
    const-string v0, "SemDisplaySolution"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3710
    :try_start_b2
    const-string v0, "SemDisplaySolution Service"

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3711
    const/4 v0, 0x0

    .line 3712
    .local v0, "dsClass":Ljava/lang/Class;
    const-string v12, "com.samsung.android.displaysolution.SemDisplaySolutionManagerService"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    move-object v0, v12

    .line 3713
    if-nez v0, :cond_c7

    .line 3714
    const-string v12, "SemDisplaySolution Service does not exist"

    invoke-static {v8, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e1

    .line 3716
    :cond_c7
    new-array v12, v13, [Ljava/lang/Class;

    const-class v14, Landroid/content/Context;

    const/4 v15, 0x0

    aput-object v14, v12, v15

    invoke-virtual {v0, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    .line 3717
    .local v12, "constructor":Ljava/lang/reflect/Constructor;
    new-array v14, v13, [Ljava/lang/Object;

    aput-object v3, v14, v15

    invoke-virtual {v12, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/IBinder;

    .line 3718
    .local v14, "dsService":Landroid/os/IBinder;
    const-string v15, "DisplaySolution"

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e1
    .catchall {:try_start_b2 .. :try_end_e1} :catchall_e2

    .line 3722
    .end local v0    # "dsClass":Ljava/lang/Class;
    .end local v12    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v14    # "dsService":Landroid/os/IBinder;
    :goto_e1
    goto :goto_e8

    .line 3720
    :catchall_e2
    move-exception v0

    .line 3721
    .local v0, "e":Ljava/lang/Throwable;
    const-string v12, "Failed To Start SemDisplaySolution Service "

    invoke-direct {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3723
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_e8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3726
    const-string v0, "SemInputDeviceManagerService true"

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3728
    const-string v0, "SemInputDeviceManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3730
    :try_start_f5
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3731
    const/4 v12, 0x0

    .line 3732
    .local v12, "secinputdevClass":Ljava/lang/Class;
    const-string v14, "com.samsung.android.hardware.secinputdev.SemInputDeviceManagerService"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    move-object v12, v14

    .line 3733
    if-nez v12, :cond_108

    .line 3734
    const-string v0, "SemInputDeviceManagerService does not exist"

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_121

    .line 3736
    :cond_108
    new-array v14, v13, [Ljava/lang/Class;

    const-class v15, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-virtual {v12, v14}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v14

    .line 3737
    .local v14, "constructor":Ljava/lang/reflect/Constructor;
    new-array v15, v13, [Ljava/lang/Object;

    aput-object v3, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/IBinder;

    .line 3738
    .local v15, "secinputdevService":Landroid/os/IBinder;
    invoke-static {v0, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_121
    .catchall {:try_start_f5 .. :try_end_121} :catchall_122

    .line 3742
    .end local v12    # "secinputdevClass":Ljava/lang/Class;
    .end local v14    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v15    # "secinputdevService":Landroid/os/IBinder;
    :goto_121
    goto :goto_128

    .line 3740
    :catchall_122
    move-exception v0

    .line 3741
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v12, "Failed To Start SemInputDeviceManagerService Service "

    invoke-direct {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3743
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_128
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3746
    const-string v0, "StartSystemUI"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3747
    const-string v0, "!@Boot_EBS_F: StartSystemUI"

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3749
    :try_start_135
    invoke-static/range {p2 .. p3}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_138
    .catchall {:try_start_135 .. :try_end_138} :catchall_139

    .line 3752
    goto :goto_142

    .line 3750
    :catchall_139
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 3751
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "starting System UI"

    invoke-direct {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3753
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_142
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3757
    const-string/jumbo v0, "startThemeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3759
    :try_start_14b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SystemServer;->startThemeService()V
    :try_end_14e
    .catchall {:try_start_14b .. :try_end_14e} :catchall_14f

    .line 3762
    goto :goto_158

    .line 3760
    :catchall_14f
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 3761
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "starting Theme Service"

    invoke-direct {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3763
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_158
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3769
    const-string/jumbo v0, "startResourceOverlayService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3771
    :try_start_161
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SystemServer;->startResourceOverlayService()V
    :try_end_164
    .catchall {:try_start_161 .. :try_end_164} :catchall_165

    .line 3774
    goto :goto_16e

    .line 3772
    :catchall_165
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 3773
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "starting Resource Overlay Service"

    invoke-direct {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3775
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_16e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3780
    const-string v0, "ExternalAccessoryService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3781
    new-instance v0, Lcom/android/server/eas/ExternalAccessoryService;

    invoke-direct {v0, v3}, Lcom/android/server/eas/ExternalAccessoryService;-><init>(Landroid/content/Context;)V

    move-object v12, v0

    .line 3783
    .local v12, "externalAccessoryService":Lcom/android/server/eas/ExternalAccessoryService;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3786
    const-string v14, "Load of Classes of Lazy Services"

    .line 3787
    .local v14, "LAZY_SERVICES":Ljava/lang/String;
    new-instance v0, Lcom/android/server/-$$Lambda$SystemServer$yBvDGZ7jHa044iqvesLuZKtpXGc;

    move/from16 v15, p4

    invoke-direct {v0, v1, v3, v15}, Lcom/android/server/-$$Lambda$SystemServer$yBvDGZ7jHa044iqvesLuZKtpXGc;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Z)V

    const-string v13, "Load of Classes of Lazy Services"

    invoke-static {v0, v13}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v13

    .line 3931
    .local v13, "lazyServiceCompleted":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    const-string v0, "KT UCA Service"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3932
    const-string/jumbo v18, "ro.csc.sales_code"

    move-object/from16 v19, v9

    .end local v9    # "WEBVIEW_PREPARATION":Ljava/lang/String;
    .local v19, "WEBVIEW_PREPARATION":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3933
    .local v9, "salesCode":Ljava/lang/String;
    move-object/from16 v18, v12

    .end local v12    # "externalAccessoryService":Lcom/android/server/eas/ExternalAccessoryService;
    .local v18, "externalAccessoryService":Lcom/android/server/eas/ExternalAccessoryService;
    new-instance v12, Ljava/io/File;

    move-object/from16 v20, v14

    .end local v14    # "LAZY_SERVICES":Ljava/lang/String;
    .local v20, "LAZY_SERVICES":Ljava/lang/String;
    const-string v14, "/system/lib/libktuca2.so"

    invoke-direct {v12, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3934
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    .line 3935
    .local v14, "isExists":Z
    move-object/from16 v21, v12

    .end local v12    # "file":Ljava/io/File;
    .local v21, "file":Ljava/io/File;
    const-string v12, "SKC"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1cd

    const-string v12, "KTC"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1cd

    const-string v12, "LUC"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1cd

    .line 3936
    const-string v12, "KOO"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1ea

    :cond_1cd
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v12

    if-nez v12, :cond_1ea

    if-eqz v14, :cond_1ea

    .line 3939
    :try_start_1d5
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3940
    const-string/jumbo v0, "ktuca"

    new-instance v12, Landroid/ktuca/KtUcaService;

    invoke-direct {v12, v3}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v12}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e3
    .catchall {:try_start_1d5 .. :try_end_1e3} :catchall_1e4

    .line 3943
    goto :goto_1ea

    .line 3941
    :catchall_1e4
    move-exception v0

    .line 3942
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v12, "Failure starting KT UCA Service"

    invoke-static {v8, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3945
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1ea
    :goto_1ea
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3949
    const-string v0, "Mobile Payment Service"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3952
    :try_start_1f2
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3953
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v12, Landroid/content/ComponentName;
    :try_end_1fb
    .catchall {:try_start_1f2 .. :try_end_1fb} :catchall_214

    move-object/from16 v22, v9

    .end local v9    # "salesCode":Ljava/lang/String;
    .local v22, "salesCode":Ljava/lang/String;
    :try_start_1fd
    const-class v9, Lcom/android/server/spay/UpdateReceiver;

    invoke-direct {v12, v3, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v9, 0x1

    invoke-virtual {v0, v12, v9, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 3958
    const-string/jumbo v0, "mobile_payment"

    new-instance v9, Lcom/android/server/spay/PaymentManagerService;

    invoke-direct {v9, v3}, Lcom/android/server/spay/PaymentManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_211
    .catchall {:try_start_1fd .. :try_end_211} :catchall_212

    .line 3961
    goto :goto_21c

    .line 3959
    :catchall_212
    move-exception v0

    goto :goto_217

    .end local v22    # "salesCode":Ljava/lang/String;
    .restart local v9    # "salesCode":Ljava/lang/String;
    :catchall_214
    move-exception v0

    move-object/from16 v22, v9

    .line 3960
    .end local v9    # "salesCode":Ljava/lang/String;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v22    # "salesCode":Ljava/lang/String;
    :goto_217
    const-string v9, "Failure starting Payment Manager Service"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3963
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_21c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3967
    const-string/jumbo v0, "ro.config.tima"

    const-string v9, "0"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "1"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 3968
    .local v9, "timaEnabled":Z
    if-eqz v9, :cond_2ab

    .line 3970
    :try_start_230
    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3971
    invoke-virtual {v2, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3972
    new-instance v0, Lcom/android/server/TimaService;

    invoke-direct {v0, v3}, Lcom/android/server/TimaService;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/SystemServer;->timaService:Lcom/android/server/TimaService;

    .line 3973
    const-string/jumbo v7, "tima"

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3974
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.enterprise.keystore.TimaKeystoreService$Lifecycle"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3975
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_24d
    .catchall {:try_start_230 .. :try_end_24d} :catchall_24e

    .line 3978
    goto :goto_255

    .line 3976
    :catchall_24e
    move-exception v0

    .line 3977
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting TimaService except PKM service"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3981
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_255
    :try_start_255
    const-string v0, "com.sec.tima.TimaKeyStoreProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3982
    .local v0, "keyStoreClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/Provider;

    invoke-static {v7}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 3983
    const-string v7, "Added TimaKesytore provider"

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3984
    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v7

    if-eqz v7, :cond_283

    .line 3985
    const-string v7, "com.sec.tima.FipsTimaKeyStoreProvider"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 3986
    .local v7, "FipsKeyStoreClass":Ljava/lang/Class;
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/Provider;

    invoke-static {v12}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 3987
    const-string v12, "Added FipsTimaKesytore provider"

    invoke-static {v8, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_283
    .catch Ljava/lang/Exception; {:try_start_255 .. :try_end_283} :catch_284

    .line 3993
    .end local v0    # "keyStoreClass":Ljava/lang/Class;
    .end local v7    # "FipsKeyStoreClass":Ljava/lang/Class;
    :cond_283
    goto :goto_28d

    .line 3990
    :catch_284
    move-exception v0

    .line 3991
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "Unable to add TimaKesytore/FipsTimaKesytore provider"

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3992
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3995
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_28d
    :try_start_28d
    new-instance v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/SystemServer;->ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 3996
    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3997
    iget-object v0, v1, Lcom/android/server/SystemServer;->ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v6, v0}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3998
    iget-object v0, v1, Lcom/android/server/SystemServer;->ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-virtual {v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->systemReady()V
    :try_end_2a1
    .catch Ljava/lang/Exception; {:try_start_28d .. :try_end_2a1} :catch_2a2

    .line 4002
    goto :goto_2ab

    .line 3999
    :catch_2a2
    move-exception v0

    .line 4000
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v6, "Failed to add ccm policy service"

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4001
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4006
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2ab
    :goto_2ab
    const-string v0, "StartSamsungHealthService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4007
    new-instance v0, Lcom/android/server/shealth/SamsungHealthService;

    invoke-direct {v0, v3}, Lcom/android/server/shealth/SamsungHealthService;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/SystemServer;->mSHealthService:Lcom/android/server/shealth/SamsungHealthService;

    .line 4008
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4012
    const-string v0, "StartVoiceNoteService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4013
    new-instance v0, Lcom/android/server/voicenote/VoiceNoteService;

    invoke-direct {v0, v3}, Lcom/android/server/voicenote/VoiceNoteService;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/SystemServer;->mVoiceNoteService:Lcom/android/server/voicenote/VoiceNoteService;

    .line 4014
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4018
    const-string v0, "StartSamsungNotesService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4019
    new-instance v0, Lcom/android/server/samsungnotes/SamsungNotesService;

    invoke-direct {v0, v3}, Lcom/android/server/samsungnotes/SamsungNotesService;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/SystemServer;->mSamsungNotesService:Lcom/android/server/samsungnotes/SamsungNotesService;

    .line 4020
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4024
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->WIFI_OFFLOAD:Z

    if-eqz v0, :cond_2f6

    .line 4026
    :try_start_2dc
    const-string v0, "Wi-Fi  Offload Service"

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4027
    new-instance v0, Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-direct {v0, v3}, Lcom/android/server/wifioffload/WifiOffloadService;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/SystemServer;->mWifiOffloadService:Lcom/android/server/wifioffload/WifiOffloadService;

    .line 4028
    const-string/jumbo v6, "wifioffload"

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2ee
    .catchall {:try_start_2dc .. :try_end_2ee} :catchall_2ef

    .line 4031
    goto :goto_2f6

    .line 4029
    :catchall_2ef
    move-exception v0

    .line 4030
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Wi-Fi Offload Service"

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4039
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2f6
    :goto_2f6
    if-eqz p5, :cond_30d

    .line 4040
    const-string v0, "EnableAirplaneModeInSafeMode"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4042
    const/4 v6, 0x1

    :try_start_2fe
    invoke-virtual {v4, v6}, Lcom/android/server/ConnectivityService;->setAirplaneMode(Z)V
    :try_end_301
    .catchall {:try_start_2fe .. :try_end_301} :catchall_302

    .line 4045
    goto :goto_30a

    .line 4043
    :catchall_302
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 4044
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v6, "enabling Airplane Mode during Safe Mode bootup"

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4046
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_30a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4048
    :cond_30d
    const-string v0, "MakeNetworkManagementServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4050
    if-eqz p7, :cond_334

    .line 4051
    :try_start_314
    const-string v0, "!@Boot_DEBUG: start networkManagement"

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4052
    const-string v0, "!@Boot_EBS_D: start networkManagement"

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4053
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/NetworkManagementService;->systemReady()V

    .line 4054
    const-string v0, "!@Boot_DEBUG: end networkManagement"

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4055
    const-string v0, "!@Boot_EBS_D: end networkManagement"

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32b
    .catchall {:try_start_314 .. :try_end_32b} :catchall_32c

    goto :goto_334

    .line 4057
    :catchall_32c
    move-exception v0

    .line 4058
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Network Managment Service ready"

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_335

    .line 4059
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_334
    :goto_334
    nop

    .line 4060
    :goto_335
    const/4 v0, 0x0

    .line 4061
    .local v0, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    if-eqz v5, :cond_33f

    .line 4062
    nop

    .line 4063
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    move-object v6, v0

    goto :goto_340

    .line 4061
    :cond_33f
    move-object v6, v0

    .line 4065
    .end local v0    # "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    .local v6, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    :goto_340
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4066
    const-string v0, "MakeIpSecServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4068
    if-eqz p9, :cond_358

    .line 4069
    :try_start_34a
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/IpSecService;->systemReady()V
    :try_end_34d
    .catchall {:try_start_34a .. :try_end_34d} :catchall_34e

    goto :goto_358

    .line 4071
    :catchall_34e
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 4072
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making IpSec Service ready"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_359

    .line 4073
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_358
    :goto_358
    nop

    .line 4074
    :goto_359
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4075
    const-string v0, "MakeNetworkStatsServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4077
    if-eqz p10, :cond_371

    .line 4078
    :try_start_363
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_366
    .catchall {:try_start_363 .. :try_end_366} :catchall_367

    goto :goto_371

    .line 4080
    :catchall_367
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 4081
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making Network Stats Service ready"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_372

    .line 4082
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_371
    :goto_371
    nop

    .line 4083
    :goto_372
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4084
    const-string v0, "MakeConnectivityServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4086
    if-eqz v4, :cond_38a

    .line 4087
    :try_start_37c
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_37f
    .catchall {:try_start_37c .. :try_end_37f} :catchall_380

    goto :goto_38a

    .line 4089
    :catchall_380
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 4090
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making Connectivity Service ready"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_38b

    .line 4091
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_38a
    :goto_38a
    nop

    .line 4092
    :goto_38b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4093
    const-string v0, "MakeNetworkPolicyServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4095
    if-eqz v5, :cond_3a3

    .line 4096
    :try_start_395
    invoke-virtual {v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_398
    .catchall {:try_start_395 .. :try_end_398} :catchall_399

    goto :goto_3a3

    .line 4098
    :catchall_399
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 4099
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making Network Policy Service ready"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3a4

    .line 4100
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3a3
    :goto_3a3
    nop

    .line 4101
    :goto_3a4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4103
    const-string v0, "MakeUrspServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4105
    if-eqz p11, :cond_3bc

    .line 4106
    :try_start_3ae
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/net/UrspService;->systemReady()V
    :try_end_3b1
    .catchall {:try_start_3ae .. :try_end_3b1} :catchall_3b2

    goto :goto_3bc

    .line 4108
    :catchall_3b2
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 4109
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making ursp Service ready"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3bd

    .line 4110
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3bc
    :goto_3bc
    nop

    .line 4111
    :goto_3bd
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4115
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    .line 4119
    const-string v0, "PhaseThirdPartyAppsCanStart"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4120
    const-string v0, "!@Boot_EBS_D: PHASE_THIRD_PARTY_APPS_CAN_START"

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4122
    if-eqz v10, :cond_3d4

    .line 4123
    invoke-static {v10, v11}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 4125
    :cond_3d4
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x258

    invoke-virtual {v0, v2, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 4126
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4128
    const-string v0, "StartNetworkStack"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4135
    :try_start_3e3
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->start()V
    :try_end_3ea
    .catchall {:try_start_3e3 .. :try_end_3ea} :catchall_3eb

    .line 4138
    goto :goto_3f2

    .line 4136
    :catchall_3eb
    move-exception v0

    .line 4137
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Network Stack"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4139
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3f2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4141
    const-string v0, "StartTethering"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4144
    :try_start_3fa
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    const-string v7, "android.net.ITetheringConnector"

    const-string v11, "android.permission.MAINLINE_NETWORK_STACK"

    sget-object v12, Lcom/android/server/-$$Lambda$SystemServer$w0Iznhm34hS4F2mVrwsPt2YnJW8;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$w0Iznhm34hS4F2mVrwsPt2YnJW8;

    invoke-virtual {v0, v7, v11, v12}, Landroid/net/ConnectivityModuleConnector;->startModuleService(Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V
    :try_end_407
    .catchall {:try_start_3fa .. :try_end_407} :catchall_408

    .line 4153
    goto :goto_40f

    .line 4151
    :catchall_408
    move-exception v0

    .line 4152
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Tethering"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4154
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_40f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4157
    const-string v0, "SAccessoryManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4159
    if-eqz p12, :cond_426

    :try_start_419
    invoke-virtual/range {p12 .. p12}, Lcom/samsung/accessory/manager/SAccessoryManager;->systemReady()V
    :try_end_41c
    .catch Ljava/lang/Exception; {:try_start_419 .. :try_end_41c} :catch_41d

    goto :goto_426

    .line 4160
    :catch_41d
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 4161
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "Notifying SAccessoryManager running"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_427

    .line 4162
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_426
    :goto_426
    nop

    .line 4163
    :goto_427
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4166
    const-string v0, "SLocationServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4168
    if-eqz p13, :cond_464

    .line 4169
    :try_start_431
    const-string v0, "com.samsung.android.location.SLocationLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4170
    .local v0, "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v7, "systemReady"

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Class;

    const-class v23, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v23, v12, v16

    const-class v23, Landroid/os/IBinder;

    const/16 v17, 0x1

    aput-object v23, v12, v17

    invoke-virtual {v0, v7, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 4171
    .local v7, "sLocationSystemReady":Ljava/lang/reflect/Method;
    const/4 v12, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v3, v11, v16

    const/16 v16, 0x1

    aput-object p13, v11, v16

    invoke-virtual {v7, v12, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45b
    .catchall {:try_start_431 .. :try_end_45b} :catchall_45c

    goto :goto_464

    .line 4173
    .end local v0    # "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "sLocationSystemReady":Ljava/lang/reflect/Method;
    :catchall_45c
    move-exception v0

    .line 4174
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making SLocation Service ready : "

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_465

    .line 4175
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_464
    :goto_464
    nop

    .line 4176
    :goto_465
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4178
    const-string v0, "MakeCountryDetectionServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4180
    if-eqz p14, :cond_47c

    .line 4181
    :try_start_46f
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_472
    .catchall {:try_start_46f .. :try_end_472} :catchall_473

    goto :goto_47c

    .line 4183
    :catchall_473
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 4184
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "Notifying CountryDetectorService running"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_47d

    .line 4185
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_47c
    :goto_47c
    nop

    .line 4186
    :goto_47d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4205
    :try_start_480
    const-string v0, "SYSINT not supported in product"

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_485
    .catch Ljava/lang/Exception; {:try_start_480 .. :try_end_485} :catch_486

    .line 4209
    goto :goto_48c

    .line 4207
    :catch_486
    move-exception v0

    .line 4208
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "SYSINT not supported"

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4212
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_48c
    const-string v0, "MakeNetworkTimeUpdateReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4214
    if-eqz p15, :cond_4a0

    .line 4215
    :try_start_493
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_496
    .catchall {:try_start_493 .. :try_end_496} :catchall_497

    goto :goto_4a0

    .line 4217
    :catchall_497
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 4218
    .local v0, "e":Ljava/lang/Throwable;
    const-string v7, "Notifying NetworkTimeService running"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4a1

    .line 4219
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4a0
    :goto_4a0
    nop

    .line 4220
    :goto_4a1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4221
    const-string v0, "MakeInputManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4224
    if-eqz p16, :cond_4b8

    .line 4225
    :try_start_4ab
    invoke-virtual/range {p16 .. p16}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_4ae
    .catchall {:try_start_4ab .. :try_end_4ae} :catchall_4af

    goto :goto_4b8

    .line 4227
    :catchall_4af
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 4228
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "Notifying InputManagerService running"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4b9

    .line 4229
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4b8
    :goto_4b8
    nop

    .line 4230
    :goto_4b9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4242
    const-string v0, "MakeTelephonyRegistryReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4244
    if-eqz p18, :cond_4d0

    .line 4245
    :try_start_4c3
    invoke-virtual/range {p18 .. p18}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_4c6
    .catchall {:try_start_4c3 .. :try_end_4c6} :catchall_4c7

    goto :goto_4d0

    .line 4247
    :catchall_4c7
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 4248
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "Notifying TelephonyRegistry running"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4d1

    .line 4249
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4d0
    :goto_4d0
    nop

    .line 4250
    :goto_4d1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4251
    const-string v0, "MakeMediaRouterServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4253
    if-eqz p19, :cond_4e8

    .line 4254
    :try_start_4db
    invoke-virtual/range {p19 .. p19}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_4de
    .catchall {:try_start_4db .. :try_end_4de} :catchall_4df

    goto :goto_4e8

    .line 4256
    :catchall_4df
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 4257
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "Notifying MediaRouterService running"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4e9

    .line 4258
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4e8
    :goto_4e8
    nop

    .line 4259
    :goto_4e9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4263
    :try_start_4ec
    invoke-static/range {p2 .. p2}, Lcom/android/server/SystemServer;->startEmergencyModeService(Landroid/content/Context;)V
    :try_end_4ef
    .catch Ljava/lang/Exception; {:try_start_4ec .. :try_end_4ef} :catch_4f0

    .line 4266
    goto :goto_4f8

    .line 4264
    :catch_4f0
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 4265
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "Notifying EmergencyModeService running"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4269
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4f8
    const-string v0, "MakeMmsServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4271
    if-eqz p20, :cond_50c

    .line 4272
    :try_start_4ff
    invoke-virtual/range {p20 .. p20}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_502
    .catchall {:try_start_4ff .. :try_end_502} :catchall_503

    goto :goto_50c

    .line 4274
    :catchall_503
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 4275
    .local v0, "e":Ljava/lang/Throwable;
    const-string v7, "Notifying MmsService running"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_50d

    .line 4276
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_50c
    :goto_50c
    nop

    .line 4277
    :goto_50d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4279
    const-string v0, "IncidentDaemonReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4283
    :try_start_515
    const-string/jumbo v0, "incident"

    .line 4284
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4283
    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    .line 4285
    .local v0, "incident":Landroid/os/IIncidentManager;
    if-eqz v0, :cond_525

    .line 4286
    invoke-interface {v0}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_525
    .catchall {:try_start_515 .. :try_end_525} :catchall_526

    .line 4290
    .end local v0    # "incident":Landroid/os/IIncidentManager;
    :cond_525
    goto :goto_52c

    .line 4288
    :catchall_526
    move-exception v0

    .line 4289
    .local v0, "e":Ljava/lang/Throwable;
    const-string v7, "Notifying incident daemon running"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4291
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_52c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4293
    iget-wide v7, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    const-wide/16 v11, 0x0

    cmp-long v0, v7, v11

    if-eqz v0, :cond_544

    .line 4294
    const-string v0, "MakeIncrementalServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4295
    iget-wide v7, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    invoke-static {v7, v8}, Lcom/android/server/SystemServer;->setIncrementalServiceSystemReady(J)V

    .line 4296
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4298
    :cond_544
    const-string v0, "LazyService Wait Here"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4299
    const-string v0, "Lazy Service"

    invoke-static {v13, v0}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 4300
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4301
    return-void
.end method
