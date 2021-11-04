.class final Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2317
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 2318
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2319
    return-void
.end method

.method private handleInitialize()V
    .registers 10

    .line 2388
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider;->setupNativeGnssService(Z)V
    invoke-static {v0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3300(Lcom/android/server/location/gnss/GnssLocationProvider;Z)V

    .line 2390
    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider;->native_is_gnss_visibility_control_supported()Z
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3400()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2391
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    new-instance v2, Lcom/android/server/location/gnss/GnssVisibilityControl;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object v3, v3, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider;->mLooper:Landroid/os/Looper;
    invoke-static {v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3600(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object v5, v5, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/location/gnss/GnssVisibilityControl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    # setter for: Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;
    invoke-static {v0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3502(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/server/location/gnss/GnssVisibilityControl;)Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 2396
    :cond_24
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider;->reloadGpsProperties()V
    invoke-static {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3700(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    .line 2399
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2400
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2401
    const-string v2, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2402
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2403
    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2404
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2405
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2406
    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2407
    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2408
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object v2, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3800(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2410
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object v2, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->registerNetworkCallbacks()V

    .line 2413
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object v2, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 2414
    const-string/jumbo v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 2415
    .local v2, "locManager":Landroid/location/LocationManager;
    const-wide/16 v5, 0x0

    .line 2416
    .local v5, "minTime":J
    const/4 v3, 0x0

    .line 2417
    .local v3, "minDistance":F
    const-string/jumbo v7, "passive"

    invoke-static {v7, v5, v6, v3, v1}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v1

    .line 2424
    .local v1, "request":Landroid/location/LocationRequest;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    .line 2425
    new-instance v7, Lcom/android/server/location/gnss/GnssLocationProvider$NetworkLocationListener;

    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-direct {v7, v8, v4}, Lcom/android/server/location/gnss/GnssLocationProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/server/location/gnss/GnssLocationProvider$1;)V

    .line 2428
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 2425
    invoke-virtual {v2, v1, v7, v4}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 2430
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    .line 2431
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 2323
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2324
    .local v0, "message":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_98

    const/4 v2, 0x3

    if-eq v0, v2, :cond_8a

    const/16 v2, 0xb

    if-eq v0, v2, :cond_83

    const/16 v2, 0xd

    if-eq v0, v2, :cond_7f

    const/16 v2, 0x14

    if-eq v0, v2, :cond_77

    const/4 v2, 0x5

    if-eq v0, v2, :cond_6d

    const/4 v2, 0x6

    if-eq v0, v2, :cond_67

    const/16 v2, 0x17

    if-eq v0, v2, :cond_5f

    const/16 v2, 0x18

    if-eq v0, v2, :cond_55

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_108

    goto/16 :goto_9e

    .line 2348
    :pswitch_28
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider;->handleReportSvStatus(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)V
    invoke-static {v2, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$2900(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)V

    .line 2349
    goto/16 :goto_9e

    .line 2345
    :pswitch_33
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_3a

    move v2, v1

    :cond_3a
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/location/Location;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider;->handleReportLocation(ZLandroid/location/Location;)V
    invoke-static {v3, v2, v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$2800(Lcom/android/server/location/gnss/GnssLocationProvider;ZLandroid/location/Location;)V

    .line 2346
    goto :goto_9e

    .line 2333
    :pswitch_42
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_49

    move v2, v1

    :cond_49
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider;->handleRequestLocation(ZZ)V
    invoke-static {v3, v2, v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$2500(Lcom/android/server/location/gnss/GnssLocationProvider;ZZ)V

    .line 2334
    goto :goto_9e

    .line 2361
    :cond_55
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->extension_secGnssConfigurationUpdate(Ljava/lang/String;)V

    goto :goto_9e

    .line 2358
    :cond_5f
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_delete_aiding_data(I)V

    .line 2359
    goto :goto_9e

    .line 2336
    :cond_67
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider;->handleDownloadPsdsData()V
    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$2600(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    .line 2337
    goto :goto_9e

    .line 2330
    :cond_6d
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/gnss/NtpTimeHelper;
    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$2400(Lcom/android/server/location/gnss/GnssLocationProvider;)Lcom/android/server/location/gnss/NtpTimeHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/location/gnss/NtpTimeHelper;->retrieveAndInjectNtpTime()V

    .line 2331
    goto :goto_9e

    .line 2355
    :cond_77
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleWakelockControl(I)V

    .line 2356
    goto :goto_9e

    .line 2342
    :cond_7f
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->handleInitialize()V

    .line 2343
    goto :goto_9e

    .line 2339
    :cond_83
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    const/4 v3, 0x2

    # setter for: Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsDataPending:I
    invoke-static {v2, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$2702(Lcom/android/server/location/gnss/GnssLocationProvider;I)I

    .line 2340
    goto :goto_9e

    .line 2326
    :cond_8a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/location/gnss/GnssLocationProvider$GpsRequest;

    .line 2327
    .local v2, "gpsRequest":Lcom/android/server/location/gnss/GnssLocationProvider$GpsRequest;
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object v4, v2, Lcom/android/server/location/gnss/GnssLocationProvider$GpsRequest;->request:Lcom/android/internal/location/ProviderRequest;

    iget-object v5, v2, Lcom/android/server/location/gnss/GnssLocationProvider$GpsRequest;->source:Landroid/os/WorkSource;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    invoke-static {v3, v4, v5}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$2300(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 2328
    goto :goto_9e

    .line 2351
    .end local v2    # "gpsRequest":Lcom/android/server/location/gnss/GnssLocationProvider$GpsRequest;
    :cond_98
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider;->updateLowPowerMode()V
    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3000(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    .line 2352
    nop

    .line 2365
    :goto_9e
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v1, :cond_106

    .line 2367
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3100(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2370
    const/16 v1, 0x11

    const-string v2, ")"

    const-string v3, "WakeLock released by handleMessage("

    const-string v4, "GnssLocationProvider"

    const-string v5, ", "

    if-ne v1, v0, :cond_db

    .line 2371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider;->messageIdAsString(I)Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3200(Lcom/android/server/location/gnss/GnssLocationProvider;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_106

    .line 2375
    :cond_db
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider;->messageIdAsString(I)Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3200(Lcom/android/server/location/gnss/GnssLocationProvider;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    :cond_106
    :goto_106
    return-void

    nop

    :pswitch_data_108
    .packed-switch 0x10
        :pswitch_42
        :pswitch_33
        :pswitch_28
    .end packed-switch
.end method
