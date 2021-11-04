.class Lcom/android/server/isrb/IsrbManagerServiceImpl;
.super Lcom/samsung/android/isrb/IIsrbManager$Stub;
.source "IsrbManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;
    }
.end annotation


# static fields
.field private static final ACTION_ISRB_SYSTEM_UPDATE:Ljava/lang/String; = "com.samsung.isrb.SYSTEM_UPDATE"

.field private static final LEVEL_FACTORY_RESET:I = 0x7

.field static final MSG_CHECK_SETUPWIZARD:I = 0x3

.field static final MSG_EXIT_ISRB:I = 0x2

.field static final MSG_SETUPWIZARD_FINISH:I = 0x4

.field static final MSG_SET_FAKETIME:I = 0x0

.field static final MSG_SET_ISRBDISABLED:I = 0x1

.field private static final PROP_BUILD_TIME:Ljava/lang/String; = "ro.build.date.utc"

.field private static final PROP_ENABLE_ISRB:Ljava/lang/String; = "persist.sys.enable_isrb"

.field private static final PROP_RESCUE_LEVEL_FOR_BIGDATA:Ljava/lang/String; = "persist.sys.rescue_level"

.field private static final SYSTEM_ERR_ALERT_TIMES:I = 0xc

.field private static final TAG:Ljava/lang/String; = "IsrbManagerServiceImpl"

.field private static final TEST_TIME:J = 0x16f5caf7400L

.field private static final TIME_AFTERNOON:I = 0x12

.field private static final TIME_INTERVAL:I = 0x6

.field private static final TIME_MORNING:I = 0x6

.field private static final TIME_NIGHT:I = 0x0

.field private static final TIME_NOON:I = 0xc

.field private static final TIPS_DELAY_TIME:I = 0x3a98


# instance fields
.field private mBootComplete:Z

.field private mBuildtime:J

.field private mContext:Landroid/content/Context;

.field private mErrAlertNum:I

.field private mHandler:Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;

.field private mIsNetworkReady:Z

.field private mIsSystemErrPopup:Z

.field private mLooper:Landroid/os/Looper;

.field private mPreviousTipsDate:I

.field private mPreviousTipsMonth:I

.field private mPreviousTipsTime:I

.field private mPreviousTipsYear:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mShowUI:Z

.field private mSystemReady:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/isrb/IIsrbManager$Stub;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mSystemReady:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mBootComplete:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mShowUI:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mIsSystemErrPopup:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mIsNetworkReady:Z

    .line 65
    iput v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mErrAlertNum:I

    .line 66
    iput v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsTime:I

    .line 67
    iput v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsDate:I

    .line 68
    iput v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsMonth:I

    .line 69
    iput v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsYear:I

    .line 79
    iput-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/isrb/IsrbManagerServiceImpl;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 39
    iget-wide v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mBuildtime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/server/isrb/IsrbManagerServiceImpl;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/isrb/IsrbManagerServiceImpl;
    .param p1, "x1"    # J

    .line 39
    iput-wide p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mBuildtime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/server/isrb/IsrbManagerServiceImpl;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 39
    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/isrb/IsrbManagerServiceImpl;)Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 39
    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mHandler:Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/isrb/IsrbManagerServiceImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 39
    iget-boolean v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mIsSystemErrPopup:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/isrb/IsrbManagerServiceImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/isrb/IsrbManagerServiceImpl;
    .param p1, "x1"    # Z

    .line 39
    iput-boolean p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mIsSystemErrPopup:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/isrb/IsrbManagerServiceImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 39
    iget v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mErrAlertNum:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/isrb/IsrbManagerServiceImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 39
    iget v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsYear:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/isrb/IsrbManagerServiceImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 39
    iget v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsMonth:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/isrb/IsrbManagerServiceImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 39
    iget v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsDate:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/isrb/IsrbManagerServiceImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 39
    iget v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsTime:I

    return v0
.end method


# virtual methods
.method initBroadcastReceiver()V
    .registers 4

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v1, "com.samsung.isrb.SYSTEM_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    new-instance v1, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;-><init>(Lcom/android/server/isrb/IsrbManagerServiceImpl;)V

    iput-object v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 163
    iget-object v2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    return-void
.end method

.method public isBootCompleteState()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    iget-boolean v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mBootComplete:Z

    return v0
.end method

.method isNetworkReady()Z
    .registers 3

    .line 187
    const-string/jumbo v0, "sys.isrb.networkcrash"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 188
    return v1

    .line 190
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method isSetupwizardFinished()Z
    .registers 5

    .line 196
    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 198
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "user_setup_complete"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_20

    :cond_1f
    move v2, v1

    .line 196
    :cond_20
    return v2
.end method

.method rebootExitisrbInternal()V
    .registers 4

    .line 295
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.enable_isrb"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.rescue_level"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :try_start_16
    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "RescueParty"

    invoke-static {v0, v1}, Landroid/os/RecoverySystem;->rebootPromptAndWipeAppData(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    .line 302
    goto :goto_26

    .line 300
    :catchall_1e
    move-exception v0

    .line 301
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "IsrbManagerServiceImpl"

    const-string v2, "RecoverySystem Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_26
    return-void
.end method

.method public setFakeTime()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    const-string v0, "IsrbManagerServiceImpl"

    const-string v1, "Fake time Check in Hooker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mHandler:Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 292
    return-void
.end method

.method public setIsrbEnable(Z)V
    .registers 4
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.enable_isrb"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method setTipsTime()V
    .registers 4

    .line 168
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 169
    .local v0, "mCalendar":Landroid/icu/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 170
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    .line 172
    .local v1, "mHour":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsYear:I

    .line 173
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsMonth:I

    .line 174
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsDate:I

    .line 175
    const/16 v2, 0x12

    if-lt v1, v2, :cond_2d

    .line 176
    iput v2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsTime:I

    goto :goto_3d

    .line 177
    :cond_2d
    const/16 v2, 0xc

    if-lt v1, v2, :cond_34

    .line 178
    iput v2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsTime:I

    goto :goto_3d

    .line 179
    :cond_34
    const/4 v2, 0x6

    if-lt v1, v2, :cond_3a

    .line 180
    iput v2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsTime:I

    goto :goto_3d

    .line 182
    :cond_3a
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsTime:I

    .line 183
    :goto_3d
    return-void
.end method

.method showSystemErrDialog()V
    .registers 6

    .line 203
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 205
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mIsSystemErrPopup:Z

    .line 206
    invoke-virtual {p0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->isNetworkReady()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mIsNetworkReady:Z

    .line 207
    iget v2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mErrAlertNum:I

    const/16 v3, 0xc

    if-ge v2, v3, :cond_19

    .line 208
    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mErrAlertNum:I

    .line 210
    :cond_19
    const v1, 0x1040564

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 211
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 212
    iget-boolean v2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mIsNetworkReady:Z

    if-nez v2, :cond_39

    .line 214
    const v2, 0x1040562

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 215
    const v2, 0x1040560

    new-instance v3, Lcom/android/server/isrb/IsrbManagerServiceImpl$2;

    invoke-direct {v3, p0}, Lcom/android/server/isrb/IsrbManagerServiceImpl$2;-><init>(Lcom/android/server/isrb/IsrbManagerServiceImpl;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_59

    .line 224
    :cond_39
    const v2, 0x1040563

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 225
    iget v2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mErrAlertNum:I

    if-ge v2, v3, :cond_4e

    .line 226
    const v2, 0x104055f

    new-instance v3, Lcom/android/server/isrb/IsrbManagerServiceImpl$3;

    invoke-direct {v3, p0}, Lcom/android/server/isrb/IsrbManagerServiceImpl$3;-><init>(Lcom/android/server/isrb/IsrbManagerServiceImpl;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 233
    :cond_4e
    const v2, 0x1040561

    new-instance v3, Lcom/android/server/isrb/IsrbManagerServiceImpl$4;

    invoke-direct {v3, p0}, Lcom/android/server/isrb/IsrbManagerServiceImpl$4;-><init>(Lcom/android/server/isrb/IsrbManagerServiceImpl;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 242
    :goto_59
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 243
    .local v2, "dialog":Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/server/isrb/IsrbManagerServiceImpl$5;

    invoke-direct {v3, p0}, Lcom/android/server/isrb/IsrbManagerServiceImpl$5;-><init>(Lcom/android/server/isrb/IsrbManagerServiceImpl;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 252
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 253
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 254
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 255
    return-void
.end method

.method systemBootComplete()V
    .registers 6

    .line 268
    iget-boolean v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mBootComplete:Z

    const/4 v1, 0x1

    if-nez v0, :cond_7

    .line 269
    iput-boolean v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mBootComplete:Z

    .line 271
    :cond_7
    const/4 v0, 0x0

    const-string/jumbo v2, "persist.sys.enable_isrb"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 272
    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mHandler:Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;

    const/4 v2, 0x3

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 274
    const-string v0, "IsrbManagerServiceImpl"

    const-string v2, "PROP_ENABLE_ISRB:disable"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mHandler:Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 277
    :cond_2c
    return-void
.end method

.method systemRunning()V
    .registers 4

    .line 258
    iget-boolean v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mSystemReady:Z

    if-nez v0, :cond_7

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mSystemReady:Z

    .line 261
    :cond_7
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "MessageISRBThread"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 262
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 263
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mLooper:Landroid/os/Looper;

    .line 264
    new-instance v1, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;

    iget-object v2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;-><init>(Lcom/android/server/isrb/IsrbManagerServiceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mHandler:Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;

    .line 265
    return-void
.end method
