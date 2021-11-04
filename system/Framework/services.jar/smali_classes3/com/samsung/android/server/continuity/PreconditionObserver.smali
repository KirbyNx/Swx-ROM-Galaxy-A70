.class Lcom/samsung/android/server/continuity/PreconditionObserver;
.super Ljava/lang/Object;
.source "PreconditionObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/continuity/PreconditionObserver$StateChangedListener;
    }
.end annotation


# static fields
.field private static final BUDS_AUTO_SWITCHING:I = 0x2

.field static final COPY_AND_PASTE:I = 0x8

.field static final FEATURE_CONTINUITY:I

.field public static final FLAG_MCF_INSTALLED:I = 0xf00

.field private static final FLAG_NONE:I = 0x0

.field private static final FLAG_SA_LOGIN:I = 0xf

.field private static final FLAG_SC_INSTALLED:I = 0xf0

.field private static final FLAG_SETTINGS_ON:I = 0xf000

.field private static final HAND_OFF:I = 0x4

.field private static final PHYSICAL_KEYBOARD:I = 0x1

.field private static final PKG_NAME_MCFDS:Ljava/lang/String; = "com.samsung.android.mcfds"

.field private static final PKG_NAME_SCLOUD:Ljava/lang/String; = "com.samsung.android.scloud"

.field private static final SAMSUNG_ACCOUNT_TYPE:Ljava/lang/String; = "com.osp.app.signin"

.field private static final SETTINGS_DEFAULT_VALUE:I = 0x0

.field private static final SETTINGS_NOT_EXIST_VALUE:I = -0x1

.field private static final SETTING_ID_CONTINUITY:Ljava/lang/String; = "mcf_continuity"

.field private static final STATE_VALID:I = 0xffff

.field private static final TAG:Ljava/lang/String; = "[MCF_DS_SYS]_PreconditionObserver"


# instance fields
.field private final mAutoSwitchSettingHelper:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

.field private final mBtOnReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentAccount:Landroid/accounts/Account;

.field private mIsAddedAccountListener:Z

.field private mIsContinuitySettingEnabled:Z

.field private mIsPkgObserverRegistered:Z

.field private mListener:Lcom/samsung/android/server/continuity/PreconditionObserver$StateChangedListener;

.field private mNeedCheckAutoSwitch:Z

.field private final mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

.field private final mPkgReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisterBtOnReceiver:Z

.field private mRegisterSettingsObserver:Z

.field private final mSettingObserver:Landroid/database/ContentObserver;

.field private mState:I

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 139
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MCF_SUPPORT_CONTINUITY"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/server/continuity/PreconditionObserver;->FEATURE_CONTINUITY:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mIsContinuitySettingEnabled:Z

    .line 51
    const/16 v0, -0x2710

    iput v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mNeedCheckAutoSwitch:Z

    .line 280
    new-instance v0, Lcom/samsung/android/server/continuity/PreconditionObserver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/continuity/PreconditionObserver$1;-><init>(Lcom/samsung/android/server/continuity/PreconditionObserver;)V

    iput-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mBtOnReceiver:Landroid/content/BroadcastReceiver;

    .line 310
    new-instance v0, Lcom/samsung/android/server/continuity/PreconditionObserver$2;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/continuity/PreconditionObserver$2;-><init>(Lcom/samsung/android/server/continuity/PreconditionObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mSettingObserver:Landroid/database/ContentObserver;

    .line 346
    new-instance v0, Lcom/samsung/android/server/continuity/PreconditionObserver$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/continuity/PreconditionObserver$3;-><init>(Lcom/samsung/android/server/continuity/PreconditionObserver;)V

    iput-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mPkgReceiver:Landroid/content/BroadcastReceiver;

    .line 458
    new-instance v0, Lcom/samsung/android/server/continuity/PreconditionObserver$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/continuity/PreconditionObserver$4;-><init>(Lcom/samsung/android/server/continuity/PreconditionObserver;)V

    iput-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    .line 64
    iput-object p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    new-instance v1, Lcom/samsung/android/server/continuity/-$$Lambda$PreconditionObserver$Qjpa0MeABe-uQostotRI0D5sZq0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/continuity/-$$Lambda$PreconditionObserver$Qjpa0MeABe-uQostotRI0D5sZq0;-><init>(Lcom/samsung/android/server/continuity/PreconditionObserver;)V

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mAutoSwitchSettingHelper:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/continuity/PreconditionObserver;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->onChangeSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/server/continuity/PreconditionObserver;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/continuity/PreconditionObserver;
    .param p1, "x1"    # I

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setFlag(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/server/continuity/PreconditionObserver;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->notifyReplacedPackage()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/server/continuity/PreconditionObserver;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->notifyChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/server/continuity/PreconditionObserver;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/continuity/PreconditionObserver;
    .param p1, "x1"    # I

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->unsetFlag(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/server/continuity/PreconditionObserver;)Landroid/accounts/Account;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 29
    iget-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mCurrentAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/server/continuity/PreconditionObserver;Landroid/accounts/Account;)Landroid/accounts/Account;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/continuity/PreconditionObserver;
    .param p1, "x1"    # Landroid/accounts/Account;

    .line 29
    iput-object p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mCurrentAccount:Landroid/accounts/Account;

    return-object p1
.end method

.method static synthetic access$600(Landroid/accounts/Account;Landroid/accounts/Account;)Z
    .registers 3
    .param p0, "x0"    # Landroid/accounts/Account;
    .param p1, "x1"    # Landroid/accounts/Account;

    .line 29
    invoke-static {p0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isChangedAccount(Landroid/accounts/Account;Landroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/server/continuity/PreconditionObserver;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/continuity/PreconditionObserver;
    .param p1, "x1"    # I

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setContinuitySetting(I)V

    return-void
.end method

.method private addOnAccountsUpdatedListener()V
    .registers 6

    .line 437
    iget-boolean v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mIsAddedAccountListener:Z

    const-string v1, "[MCF_DS_SYS]_PreconditionObserver"

    if-eqz v0, :cond_c

    .line 438
    const-string v0, "addOnAccountsUpdatedListener - already added"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void

    .line 441
    :cond_c
    const-string v0, "addOnAccountsUpdatedListener"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 443
    .local v0, "am":Landroid/accounts/AccountManager;
    iget-object v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    const/4 v2, 0x0

    const-string v3, "com.osp.app.signin"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z[Ljava/lang/String;)V

    .line 444
    iput-boolean v4, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mIsAddedAccountListener:Z

    .line 445
    return-void
.end method

.method private getSamsungAccount()Landroid/accounts/Account;
    .registers 6

    .line 418
    iget-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 420
    .local v0, "accounts":[Landroid/accounts/Account;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSamsungAccount - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "[MCF_DS_SYS]_PreconditionObserver"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    array-length v1, v0

    if-lez v1, :cond_2a

    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    .line 422
    .local v1, "account":Landroid/accounts/Account;
    :goto_2b
    if-eqz v1, :cond_47

    sget-boolean v4, Lcom/samsung/android/server/continuity/common/Utils;->DEBUG:Z

    if-eqz v4, :cond_47

    .line 423
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_47
    return-object v1
.end method

.method private handleAutoSwitchModeChanged(Z)V
    .registers 2
    .param p1, "isOn"    # Z

    .line 277
    invoke-direct {p0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->onChangeSettings()V

    .line 278
    return-void
.end method

.method private initContinuitySetting()V
    .registers 5

    .line 189
    iget-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    const-string v2, "mcf_continuity"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_20

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "value":I
    iget-object v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mCurrentAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_1d

    invoke-static {}, Lcom/samsung/android/server/continuity/common/Utils;->isLsiBtChipset()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 193
    const/4 v0, 0x1

    .line 195
    :cond_1d
    invoke-direct {p0, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setContinuitySetting(I)V

    .line 197
    .end local v0    # "value":I
    :cond_20
    return-void
.end method

.method private isAutoSwitchOn()Z
    .registers 5

    .line 167
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 168
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 169
    return v1

    .line 171
    :cond_8
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_f

    .line 172
    return v1

    .line 174
    :cond_f
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 175
    .local v2, "pairedDevice":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v2, :cond_16

    .line 176
    return v1

    .line 178
    :cond_16
    iget-boolean v3, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mNeedCheckAutoSwitch:Z

    if-eqz v3, :cond_29

    .line 179
    iput-boolean v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mNeedCheckAutoSwitch:Z

    .line 180
    iget-boolean v3, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mRegisterBtOnReceiver:Z

    if-eqz v3, :cond_29

    .line 181
    iput-boolean v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mRegisterBtOnReceiver:Z

    .line 182
    iget-object v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mBtOnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 185
    :cond_29
    iget-object v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mAutoSwitchSettingHelper:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    invoke-virtual {v1}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->isAutoSwitchModeEnabled()Z

    move-result v1

    return v1
.end method

.method private static isChangedAccount(Landroid/accounts/Account;Landroid/accounts/Account;)Z
    .registers 5
    .param p0, "prev"    # Landroid/accounts/Account;
    .param p1, "next"    # Landroid/accounts/Account;

    .line 429
    const/4 v0, 0x1

    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    .line 430
    iget-object v1, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 433
    :cond_f
    if-nez p0, :cond_15

    if-eqz p1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :cond_15
    :goto_15
    return v0
.end method

.method private isEnableSettings()Z
    .registers 7

    .line 221
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupported(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isAutoSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    .line 222
    .local v0, "autoSwitchSetting":Z
    :goto_12
    invoke-static {}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupportedContinuity()Z

    move-result v3

    if-eqz v3, :cond_22

    const-string v3, "mcf_continuity"

    invoke-direct {p0, v3}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isEnableSettings(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    move v3, v1

    goto :goto_23

    :cond_22
    move v3, v2

    .line 223
    .local v3, "continuitySetting":Z
    :goto_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEnableSettings - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[MCF_DS_SYS]_PreconditionObserver"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    if-nez v0, :cond_47

    if-eqz v3, :cond_46

    goto :goto_47

    :cond_46
    move v1, v2

    :cond_47
    :goto_47
    return v1
.end method

.method private isEnableSettings(Ljava/lang/String;)Z
    .registers 5
    .param p1, "settingId"    # Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    move v2, v1

    :cond_11
    move v0, v2

    .line 234
    .local v0, "isEnabled":Z
    const-string v1, "mcf_continuity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 235
    iput-boolean v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mIsContinuitySettingEnabled:Z

    .line 237
    :cond_1c
    return v0
.end method

.method private isFlag(I)Z
    .registers 3
    .param p1, "flag"    # I

    .line 120
    iget v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method static isSupported()Z
    .registers 1

    .line 147
    sget v0, Lcom/samsung/android/server/continuity/PreconditionObserver;->FEATURE_CONTINUITY:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static isSupported(I)Z
    .registers 3
    .param p0, "feature"    # I

    .line 151
    sget v0, Lcom/samsung/android/server/continuity/PreconditionObserver;->FEATURE_CONTINUITY:I

    const/4 v1, 0x0

    if-gtz v0, :cond_6

    .line 152
    return v1

    .line 154
    :cond_6
    and-int/2addr v0, p0

    if-ne v0, p0, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1
.end method

.method private static isSupportedContinuity()Z
    .registers 2

    .line 228
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_18

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupported(I)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :cond_18
    :goto_18
    return v0
.end method

.method public static synthetic lambda$Qjpa0MeABe-uQostotRI0D5sZq0(Lcom/samsung/android/server/continuity/PreconditionObserver;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->handleAutoSwitchModeChanged(Z)V

    return-void
.end method

.method private logContinuitySettingEnable()V
    .registers 4

    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.mcfds.LOG_SAMSUNG_ANALYTICS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v1, "type"

    const-string v2, "event"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v1, "screenId"

    const-string v2, "101"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v1, "eventId"

    const-string v2, "10100"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v1, "detail"

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v1, "com.samsung.android.mcfds"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    iget-object v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 218
    return-void
.end method

.method private notifyChanged()V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mListener:Lcom/samsung/android/server/continuity/PreconditionObserver$StateChangedListener;

    if-eqz v0, :cond_9

    .line 125
    iget v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    invoke-interface {v0, v1}, Lcom/samsung/android/server/continuity/PreconditionObserver$StateChangedListener;->onChanged(I)V

    .line 127
    :cond_9
    return-void
.end method

.method private notifyReplacedPackage()V
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mListener:Lcom/samsung/android/server/continuity/PreconditionObserver$StateChangedListener;

    if-eqz v0, :cond_7

    .line 131
    invoke-interface {v0}, Lcom/samsung/android/server/continuity/PreconditionObserver$StateChangedListener;->onPackageReplaced()V

    .line 133
    :cond_7
    return-void
.end method

.method private onChangeSettings()V
    .registers 3

    .line 318
    invoke-direct {p0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isEnableSettings()Z

    move-result v0

    .line 319
    .local v0, "isOn":Z
    const v1, 0xf000

    invoke-direct {p0, v1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isFlag(I)Z

    move-result v1

    if-ne v0, v1, :cond_e

    .line 320
    return-void

    .line 322
    :cond_e
    invoke-direct {p0, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->updateSettings(Z)V

    .line 323
    invoke-direct {p0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->notifyChanged()V

    .line 324
    return-void
.end method

.method private registerPackageObserver(Landroid/os/UserHandle;)V
    .registers 9
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 330
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 331
    .local v0, "pkgFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mPkgReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->semRegisterReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 336
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mIsPkgObserverRegistered:Z

    .line 337
    return-void
.end method

.method private registerSettingsObserver()V
    .registers 5

    .line 250
    sget v0, Lcom/samsung/android/server/continuity/PreconditionObserver;->FEATURE_CONTINUITY:I

    if-gtz v0, :cond_c

    .line 251
    const-string v0, "[MCF_DS_SYS]_PreconditionObserver"

    const-string v1, "registerSettingsObserver - invalid feature value"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void

    .line 255
    :cond_c
    iget-boolean v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mRegisterSettingsObserver:Z

    if-eqz v0, :cond_11

    .line 256
    return-void

    .line 259
    :cond_11
    invoke-static {}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupportedContinuity()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 260
    iget-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mcf_continuity"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 263
    :cond_29
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupported(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4d

    .line 264
    iget-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mAutoSwitchSettingHelper:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->start()V

    .line 266
    iget-boolean v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mNeedCheckAutoSwitch:Z

    if-eqz v0, :cond_4d

    .line 267
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 268
    .local v0, "btStateFilter":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    iget-object v2, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mBtOnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 270
    iput-boolean v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mRegisterBtOnReceiver:Z

    .line 273
    .end local v0    # "btStateFilter":Landroid/content/IntentFilter;
    :cond_4d
    iput-boolean v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mRegisterSettingsObserver:Z

    .line 274
    return-void
.end method

.method private removeOnAccountsUpdatedListener()V
    .registers 3

    .line 448
    iget-boolean v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mIsAddedAccountListener:Z

    const-string v1, "[MCF_DS_SYS]_PreconditionObserver"

    if-nez v0, :cond_c

    .line 449
    const-string v0, "removeOnAccountsUpdatedListener - already added"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return-void

    .line 452
    :cond_c
    const-string v0, "removeOnAccountsUpdatedListener"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 454
    .local v0, "am":Landroid/accounts/AccountManager;
    iget-object v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 455
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mIsAddedAccountListener:Z

    .line 456
    return-void
.end method

.method private setContinuitySetting(I)V
    .registers 5
    .param p1, "value"    # I

    .line 200
    invoke-static {}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupportedContinuity()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setContinuitySetting : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MCF_DS_SYS]_PreconditionObserver"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    const-string v2, "mcf_continuity"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->semPutIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 203
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2f

    .line 204
    invoke-direct {p0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->logContinuitySettingEnable()V

    .line 207
    :cond_2f
    return-void
.end method

.method private setFlag(I)V
    .registers 3
    .param p1, "flag"    # I

    .line 112
    iget v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    .line 113
    return-void
.end method

.method private unregisterPackageObserver()V
    .registers 3

    .line 340
    iget-boolean v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mIsPkgObserverRegistered:Z

    if-eqz v0, :cond_e

    .line 341
    iget-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mPkgReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mIsPkgObserverRegistered:Z

    .line 344
    :cond_e
    return-void
.end method

.method private unregisterSettingsObserver()V
    .registers 4

    .line 294
    iget-boolean v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mRegisterSettingsObserver:Z

    if-nez v0, :cond_5

    .line 295
    return-void

    .line 297
    :cond_5
    invoke-static {}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupportedContinuity()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 298
    iget-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 300
    :cond_16
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupported(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 301
    iget-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mAutoSwitchSettingHelper:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->stop()V

    .line 302
    iget-boolean v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mRegisterBtOnReceiver:Z

    if-eqz v0, :cond_30

    .line 303
    iget-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mBtOnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 304
    iput-boolean v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mRegisterBtOnReceiver:Z

    .line 307
    :cond_30
    iput-boolean v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mRegisterSettingsObserver:Z

    .line 308
    return-void
.end method

.method private unsetFlag(I)V
    .registers 4
    .param p1, "flag"    # I

    .line 116
    iget v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    .line 117
    return-void
.end method

.method private updateSettings(Z)V
    .registers 4
    .param p1, "isOn"    # Z

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSettings - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MCF_DS_SYS]_PreconditionObserver"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const v0, 0xf000

    if-eqz p1, :cond_1f

    .line 243
    invoke-direct {p0, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setFlag(I)V

    goto :goto_22

    .line 245
    :cond_1f
    invoke-direct {p0, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->unsetFlag(I)V

    .line 247
    :goto_22
    return-void
.end method


# virtual methods
.method public isContinuitySettingEnabled()Z
    .registers 2

    .line 69
    iget-boolean v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mIsContinuitySettingEnabled:Z

    return v0
.end method

.method meetConditions()Z
    .registers 3

    .line 73
    iget v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    const v1, 0xffff

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method start(ILcom/samsung/android/server/continuity/PreconditionObserver$StateChangedListener;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "listener"    # Lcom/samsung/android/server/continuity/PreconditionObserver$StateChangedListener;

    .line 77
    iput p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    .line 78
    iput-object p2, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mListener:Lcom/samsung/android/server/continuity/PreconditionObserver$StateChangedListener;

    .line 80
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->registerPackageObserver(Landroid/os/UserHandle;)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.scloud"

    invoke-static {v0, v1}, Lcom/samsung/android/server/continuity/common/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 83
    const/16 v0, 0xf0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setFlag(I)V

    .line 86
    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.mcfds"

    invoke-static {v0, v1}, Lcom/samsung/android/server/continuity/common/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 87
    const/16 v0, 0xf00

    invoke-direct {p0, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setFlag(I)V

    .line 90
    :cond_29
    invoke-direct {p0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mCurrentAccount:Landroid/accounts/Account;

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->initContinuitySetting()V

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isEnableSettings()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->updateSettings(Z)V

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->registerSettingsObserver()V

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->addOnAccountsUpdatedListener()V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mCurrentAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_48

    .line 98
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setFlag(I)V

    .line 100
    :cond_48
    return-void
.end method

.method stop()V
    .registers 2

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->unregisterPackageObserver()V

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->unregisterSettingsObserver()V

    .line 105
    invoke-direct {p0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->removeOnAccountsUpdatedListener()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mCurrentAccount:Landroid/accounts/Account;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    .line 108
    const/16 v0, -0x2710

    iput v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    .line 109
    return-void
.end method
