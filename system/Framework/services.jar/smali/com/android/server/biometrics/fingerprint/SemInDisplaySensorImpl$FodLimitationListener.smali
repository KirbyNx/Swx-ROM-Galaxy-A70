.class Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;
.super Ljava/lang/Object;
.source "SemInDisplaySensorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FodLimitationListener"
.end annotation


# static fields
.field private static final ACTION_WIRELESS_POWER_SHARING:Ljava/lang/String; = "com.samsung.android.sm.ACTION_WIRELESS_POWER_SHARING"

.field private static final PERMISSION_WIRELESS_POWER_SHARING:Ljava/lang/String; = "com.samsung.android.permission.wirelesspowersharing"


# instance fields
.field private mAuthRejectCountWhileWirelessPower:I

.field private mBrForWirelessPower:Landroid/content/BroadcastReceiver;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mH:Landroid/os/Handler;

.field private mIsOneHandModeRunning:Z

.field private mIsWirelessPowerChargingRunning:Z

.field private mIsWirelessPowerLimitationRunning:Z

.field private mIsWirelessPowerSharingRunning:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mContext:Landroid/content/Context;

    .line 521
    iput-object p2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mH:Landroid/os/Handler;

    .line 522
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mContentResolver:Landroid/content/ContentResolver;

    .line 523
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_LIMITATION_WIRELESS_CHARGER:Z

    if-eqz v0, :cond_14

    .line 524
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->registerWirelessPowerBroadcast()V

    .line 526
    :cond_14
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;
    .param p1, "x1"    # Z

    .line 498
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->notifyWirelessPowerStatus(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;

    .line 498
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mIsWirelessPowerSharingRunning:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;
    .param p1, "x1"    # Z

    .line 498
    iput-boolean p1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mIsWirelessPowerSharingRunning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;

    .line 498
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->updateValue()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;

    .line 498
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mIsOneHandModeRunning:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;

    .line 498
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mIsWirelessPowerChargingRunning:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;
    .param p1, "x1"    # Z

    .line 498
    iput-boolean p1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mIsWirelessPowerChargingRunning:Z

    return p1
.end method

.method private notifyWirelessPowerStatus(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 598
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mIsWirelessPowerLimitationRunning:Z

    if-ne v0, p1, :cond_5

    .line 599
    return-void

    .line 601
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mIsWirelessPowerLimitationRunning:Z

    .line 602
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getInjector()Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    move-result-object v0

    const/16 v1, 0x1d

    .line 603
    nop

    .line 602
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->request(II[B[B)I

    .line 604
    if-nez p1, :cond_17

    .line 605
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mAuthRejectCountWhileWirelessPower:I

    .line 607
    :cond_17
    return-void
.end method

.method private registerWirelessPowerBroadcast()V
    .registers 12

    .line 610
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mBrForWirelessPower:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_31

    .line 611
    new-instance v0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener$2;-><init>(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mBrForWirelessPower:Landroid/content/BroadcastReceiver;

    .line 656
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 657
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mBrForWirelessPower:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mH:Landroid/os/Handler;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 659
    new-instance v7, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.sm.ACTION_WIRELESS_POWER_SHARING"

    invoke-direct {v7, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 661
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    .local v7, "intentFilter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mBrForWirelessPower:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v10, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mH:Landroid/os/Handler;

    const-string v9, "com.samsung.android.permission.wirelesspowersharing"

    invoke-static/range {v5 .. v10}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Handler;)V

    .line 665
    .end local v7    # "intentFilter":Landroid/content/IntentFilter;
    :cond_31
    return-void
.end method

.method private unregisterWirelessPowerBroadcast()V
    .registers 3

    .line 668
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mBrForWirelessPower:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_c

    .line 669
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/server/biometrics/Utils;->unregisterBroadcast(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 670
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mBrForWirelessPower:Landroid/content/BroadcastReceiver;

    .line 672
    :cond_c
    return-void
.end method

.method private updateValue()V
    .registers 5

    .line 591
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "any_screen_running"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    move v2, v1

    :cond_e
    iput-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mIsOneHandModeRunning:Z

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FodLimitationListener. Change Value =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mIsOneHandModeRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    return-void
.end method


# virtual methods
.method isOneHandModeRunning()Z
    .registers 2

    .line 569
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->updateValue()V

    .line 570
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mIsOneHandModeRunning:Z

    return v0
.end method

.method isWirelessPowerLimitationRunning()Z
    .registers 2

    .line 574
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mIsWirelessPowerLimitationRunning:Z

    return v0
.end method

.method public observe(Z)V
    .registers 9
    .param p1, "on"    # Z

    .line 530
    const-string/jumbo v0, "observe: "

    const-string v1, "FingerprintService"

    if-eqz p1, :cond_55

    .line 531
    :try_start_7
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_7b

    .line 532
    new-instance v2, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener$1;

    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mH:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener$1;-><init>(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mContentObserver:Landroid/database/ContentObserver;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_7c

    .line 544
    :try_start_14
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "any_screen_running"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v6, -0x2

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FodLimitationListener. registerContentObserver =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mIsOneHandModeRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_39} :catch_3a

    .line 551
    goto :goto_7b

    .line 549
    :catch_3a
    move-exception v2

    .line 550
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FodLimitationListener.observe: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_7b

    .line 554
    :cond_55
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mContentObserver:Landroid/database/ContentObserver;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_57} :catch_7c

    if-eqz v2, :cond_7b

    .line 556
    :try_start_59
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_60} :catch_61

    .line 559
    goto :goto_78

    .line 557
    :catch_61
    move-exception v2

    .line 558
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_78
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mContentObserver:Landroid/database/ContentObserver;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_7b} :catch_7c

    .line 565
    :cond_7b
    :goto_7b
    goto :goto_93

    .line 563
    :catch_7c
    move-exception v2

    .line 564
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_93
    return-void
.end method

.method onAuthenticatedResult(Z)V
    .registers 5
    .param p1, "isMatched"    # Z

    .line 579
    const/4 v0, 0x0

    if-nez p1, :cond_1f

    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mIsWirelessPowerLimitationRunning:Z

    if-eqz v1, :cond_1f

    .line 580
    iget v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mAuthRejectCountWhileWirelessPower:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mAuthRejectCountWhileWirelessPower:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_21

    .line 581
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mContext:Landroid/content/Context;

    const v2, 0x1040b51

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 582
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 583
    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mAuthRejectCountWhileWirelessPower:I

    goto :goto_21

    .line 586
    :cond_1f
    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mAuthRejectCountWhileWirelessPower:I

    .line 588
    :cond_21
    :goto_21
    return-void
.end method
