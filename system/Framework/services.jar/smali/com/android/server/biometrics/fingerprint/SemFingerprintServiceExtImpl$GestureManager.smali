.class Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;
.super Ljava/lang/Object;
.source "SemFingerprintServiceExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GestureManager"
.end annotation


# static fields
.field private static final ACTION_FINGERPRINT_GESTURE_SPAY:Ljava/lang/String; = "com.samsung.android.spay.gesture.fingerprint"

.field private static final PERM_SPAY_SIMPLE_PAY:Ljava/lang/String; = "com.samsung.android.spay.permission.SIMPLE_PAY"


# instance fields
.field private mBrForGesture:Landroid/content/BroadcastReceiver;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mH:Landroid/os/Handler;

.field mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

.field mIsEnabledFpMotion:Z

.field mIsEnabledGestureForSpay:Z

.field mIsEnabledGestureForStatusBar:Z


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;)V
    .registers 4
    .param p1, "injector"    # Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    .line 1906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1907
    invoke-virtual {p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mContext:Landroid/content/Context;

    .line 1908
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    .line 1909
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mH:Landroid/os/Handler;

    .line 1910
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 1911
    new-instance v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager$1;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mH:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager$1;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 1919
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->updateValue()V

    .line 1920
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mIsEnabledFpMotion:Z

    if-eqz v0, :cond_34

    .line 1921
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->handleGestureMode(Z)V

    .line 1923
    :cond_34
    return-void
.end method

.method private registerBroadcast()V
    .registers 6

    .line 2003
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mBrForGesture:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2f

    .line 2004
    new-instance v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager$2;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mBrForGesture:Landroid/content/BroadcastReceiver;

    .line 2037
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2038
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2039
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2040
    const-string v1, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2041
    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2042
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mBrForGesture:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mH:Landroid/os/Handler;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 2044
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2f
    return-void
.end method

.method private unregisterBroadcast()V
    .registers 3

    .line 2047
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mBrForGesture:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_c

    .line 2048
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/server/biometrics/Utils;->unregisterBroadcast(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 2049
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mBrForGesture:Landroid/content/BroadcastReceiver;

    .line 2051
    :cond_c
    return-void
.end method


# virtual methods
.method handleGestureAction(I)V
    .registers 11
    .param p1, "event"    # I

    .line 1945
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isDexMode(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "FingerprintService"

    if-eqz v0, :cond_10

    .line 1946
    const-string v0, "GestureManager.handleGestureAction: SKIP gesture action because of DeX Mode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    return-void

    .line 1951
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 1953
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/SemStatusBarManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_29} :catch_b5

    .line 1954
    .local v0, "statusBar":Landroid/app/SemStatusBarManager;
    const/16 v2, 0x4e21

    const/4 v3, 0x3

    const/4 v4, -0x1

    const-string v5, "FPGT"

    if-eq p1, v2, :cond_6d

    const/16 v2, 0x4e22

    if-eq p1, v2, :cond_37

    goto/16 :goto_b4

    .line 1977
    :cond_37
    :try_start_37
    iget-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mIsEnabledGestureForStatusBar:Z

    if-eqz v2, :cond_b4

    .line 1979
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 1980
    const-string v2, "GestureManager.handleGestureAction: SKIP gesture action because of interactive status"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    return-void

    .line 1983
    :cond_4d
    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 1984
    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->expandQuickSettingsPanel()V

    .line 1985
    invoke-static {}, Lcom/android/server/biometrics/SemAnalyticsManager;->get()Lcom/android/server/biometrics/SemAnalyticsManager;

    move-result-object v2

    const-string v6, "ExpandQuickSettingsPanel"

    invoke-virtual {v2, v5, v6, v4, v3}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_b4

    .line 1989
    :cond_60
    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->expandNotificationsPanel()V

    .line 1990
    invoke-static {}, Lcom/android/server/biometrics/SemAnalyticsManager;->get()Lcom/android/server/biometrics/SemAnalyticsManager;

    move-result-object v2

    const-string v6, "ExpandNotificationPanel"

    invoke-virtual {v2, v5, v6, v4, v3}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_b4

    .line 1956
    :cond_6d
    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 1957
    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$1800()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 1958
    const-string v2, "GestureManager.handleGestureAction: QuickPanel Expanded"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    :cond_7e
    iget-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mIsEnabledGestureForStatusBar:Z

    if-eqz v2, :cond_b4

    .line 1961
    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->collapsePanels()V

    .line 1962
    invoke-static {}, Lcom/android/server/biometrics/SemAnalyticsManager;->get()Lcom/android/server/biometrics/SemAnalyticsManager;

    move-result-object v2

    const-string v6, "CollapseNotificationPanel"

    invoke-virtual {v2, v5, v6, v4, v3}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_b4

    .line 1966
    :cond_8f
    iget-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mIsEnabledGestureForSpay:Z

    if-eqz v2, :cond_b4

    .line 1967
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1968
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "com.samsung.android.spay.gesture.fingerprint"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1969
    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1970
    iget-object v6, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v8, "com.samsung.android.spay.permission.SIMPLE_PAY"

    invoke-virtual {v6, v2, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1971
    invoke-static {}, Lcom/android/server/biometrics/SemAnalyticsManager;->get()Lcom/android/server/biometrics/SemAnalyticsManager;

    move-result-object v6

    const-string v7, "SimpleSamsungPay"

    invoke-virtual {v6, v5, v7, v4, v3}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_b4} :catch_b5

    .line 1998
    .end local v0    # "statusBar":Landroid/app/SemStatusBarManager;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_b4
    :goto_b4
    goto :goto_ce

    .line 1996
    :catch_b5
    move-exception v0

    .line 1997
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GestureManager.handleGestureAction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_ce
    return-void
.end method

.method handleGestureMode(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .line 2054
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FINGERPRINT_JDM_HAL:Z

    if-eqz v0, :cond_5

    .line 2055
    return-void

    .line 2057
    :cond_5
    if-eqz p1, :cond_a

    const/16 v0, 0xf

    goto :goto_c

    :cond_a
    const/16 v0, 0x10

    .line 2058
    .local v0, "cmd":I
    :goto_c
    if-eqz p1, :cond_12

    .line 2059
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->registerBroadcast()V

    goto :goto_15

    .line 2061
    :cond_12
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->unregisterBroadcast()V

    .line 2063
    :goto_15
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->request(II[B[B)I

    .line 2064
    return-void
.end method

.method observe(Z)V
    .registers 7
    .param p1, "on"    # Z

    .line 1927
    if-eqz p1, :cond_1f

    .line 1928
    :try_start_2
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "fingerprint_gesture_quick"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1932
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "fingerprint_gesture_spay"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_26

    .line 1937
    :cond_1f
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_26} :catch_27

    .line 1941
    :goto_26
    goto :goto_42

    .line 1939
    :catch_27
    move-exception v0

    .line 1940
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GestureManager.observe: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_42
    return-void
.end method

.method updateValue()V
    .registers 6

    .line 2068
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "fingerprint_gesture_quick"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    move v0, v2

    :goto_10
    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mIsEnabledGestureForStatusBar:Z

    .line 2072
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "fingerprint_gesture_spay"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_1d

    move v2, v1

    :cond_1d
    iput-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mIsEnabledGestureForSpay:Z

    .line 2076
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mIsEnabledGestureForStatusBar:Z

    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mIsEnabledFpMotion:Z

    .line 2078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GestureManager.updateValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mIsEnabledGestureForStatusBar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mIsEnabledGestureForSpay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    return-void
.end method
