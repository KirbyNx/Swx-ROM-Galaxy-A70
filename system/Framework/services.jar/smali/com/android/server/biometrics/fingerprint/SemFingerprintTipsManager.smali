.class public Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;
.super Ljava/lang/Object;
.source "SemFingerprintTipsManager.java"


# static fields
.field private static final CONTENTS_ID_GOOD_AUTH:Ljava/lang/String; = "BIOM_0002"

.field private static final CONTENTS_ID_GOOD_ENROLL:Ljava/lang/String; = "BIOM_0001"

.field private static final CONTENTS_ID_SCREEN_PROTECTOR:Ljava/lang/String; = "BIOM_0003"

.field private static final COUNT_CUMULATIVE_FAILED_ATTEMPT:I = 0x3

.field private static final COUNT_FAILED_ATTEMPT:I = 0x5

.field private static final DB_JIT_GOOD_AUTH_TIPS:Ljava/lang/String; = "fingerprint_jit_2_tips"

.field private static final DB_JIT_GOOD_AUTH_TIPS_DATE:Ljava/lang/String; = "fingerprint_jit_2_tips_date"

.field private static final FEATURE_FINGERPRINT_TIP:Z = false

.field private static final JIT_EXTRA_DATA:Ljava/lang/String; = "tips_extras"

.field private static final JIT_EXTRA_DATA2:Ljava/lang/String; = "tips_extras2"

.field private static final JIT_EXTRA_DATA3:Ljava/lang/String; = "tips_extras3"

.field private static final JIT_EXTRA_DATA4:Ljava/lang/String; = "tips_extras4"

.field private static final MSG_SHOW_JIT_HEADUP_NOTIFICATION:I = 0x8

.field private static final TAG:Ljava/lang/String; = "FingerprintService"

.field private static final TIPS_INTENT_SERVICE_NAME:Ljava/lang/String; = ".TipsIntentService"

.field private static final TIPS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.tips"

.field private static sInstance:Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCountForJitGoodAuthTips:I

.field private mIsJitGoodAuthTipShown:Z

.field private mNumberOfFailedAttempts:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->mContext:Landroid/content/Context;

    .line 64
    const-string v0, "fingerprint_jit_2_tips"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    .line 65
    .local v0, "tipsInfo":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_13

    .line 66
    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->mIsJitGoodAuthTipShown:Z

    goto :goto_17

    .line 67
    :cond_13
    if-lez v0, :cond_17

    .line 68
    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->mCountForJitGoodAuthTips:I

    .line 70
    :cond_17
    :goto_17
    return-void
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;

    monitor-enter v0

    .line 56
    :try_start_3
    sget-object v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->sInstance:Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;

    if-nez v1, :cond_e

    .line 57
    new-instance v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->sInstance:Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;

    .line 59
    :cond_e
    sget-object v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->sInstance:Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 55
    .end local p0    # "ctx":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getLastUpdatedDate()J
    .registers 6

    .line 178
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 178
    const-string v3, "fingerprint_jit_2_tips_date"

    const/4 v4, -0x2

    invoke-static {v0, v3, v1, v2, v4}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private handleFailedAttempt()V
    .registers 5

    .line 135
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->mNumberOfFailedAttempts:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->mNumberOfFailedAttempts:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2a

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->mNumberOfFailedAttempts:I

    .line 138
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->resetCountIfNeeded()V

    .line 139
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->mCountForJitGoodAuthTips:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->mCountForJitGoodAuthTips:I

    const/4 v2, 0x3

    const-string v3, "fingerprint_jit_2_tips"

    if-ne v0, v2, :cond_25

    .line 141
    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->mIsJitGoodAuthTipShown:Z

    .line 142
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->showTipForGoodAuth()V

    .line 144
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-static {v0, v3, v1, v2}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    goto :goto_2a

    .line 146
    :cond_25
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v1, v0}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 150
    :cond_2a
    :goto_2a
    return-void
.end method

.method private synthetic lambda$onAcquireFailed$1()V
    .registers 2

    .line 93
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->mIsJitGoodAuthTipShown:Z

    if-eqz v0, :cond_5

    .line 94
    return-void

    .line 96
    :cond_5
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->handleFailedAttempt()V

    .line 97
    return-void
.end method

.method private synthetic lambda$onAuthenticated$0(Z)V
    .registers 3
    .param p1, "authenticated"    # Z

    .line 77
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->mIsJitGoodAuthTipShown:Z

    if-eqz v0, :cond_5

    .line 78
    return-void

    .line 80
    :cond_5
    if-eqz p1, :cond_b

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->mNumberOfFailedAttempts:I

    goto :goto_e

    .line 83
    :cond_b
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->handleFailedAttempt()V

    .line 85
    :goto_e
    return-void
.end method

.method private resetCountIfNeeded()V
    .registers 11

    .line 153
    new-instance v0, Ljava/util/Calendar$Builder;

    invoke-direct {v0}, Ljava/util/Calendar$Builder;-><init>()V

    .line 154
    .local v0, "calBuilder":Ljava/util/Calendar$Builder;
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->getLastUpdatedDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar$Builder;->setInstant(J)Ljava/util/Calendar$Builder;

    .line 155
    invoke-virtual {v0}, Ljava/util/Calendar$Builder;->build()Ljava/util/Calendar;

    move-result-object v1

    .line 156
    .local v1, "lastCalendar":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 157
    .local v3, "year":I
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 159
    .local v5, "month":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 160
    .local v6, "curCalendar":Ljava/util/Calendar;
    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 161
    .local v2, "curYear":I
    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 162
    .local v4, "curMonth":I
    if-ne v3, v2, :cond_2a

    if-eq v5, v4, :cond_2d

    .line 163
    :cond_2a
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->mCountForJitGoodAuthTips:I

    .line 165
    :cond_2d
    sget-boolean v7, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v7, :cond_5d

    .line 166
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "JustInTip: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FingerprintService"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_5d
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->setLastUpdatedDate()V

    .line 170
    return-void
.end method

.method private setLastUpdatedDate()V
    .registers 6

    .line 173
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 173
    const-string v3, "fingerprint_jit_2_tips_date"

    const/4 v4, -0x2

    invoke-static {v0, v3, v1, v2, v4}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    .line 175
    return-void
.end method

.method private showTipForGoodAuth()V
    .registers 6

    .line 112
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "showTipForGoodAuth"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.app.tips"

    const-string v3, "com.samsung.android.app.tips.TipsIntentService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string/jumbo v2, "tips_extras"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    const-string/jumbo v2, "tips_extras2"

    const-string v3, "BIOM_0002"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string/jumbo v2, "tips_extras3"

    const-string v3, "Under very dry conditions, you can sometimes get a better fingerprint scan by pressing a little harder and longer than usual."

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    :try_start_2c
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_33} :catch_34

    .line 131
    goto :goto_4e

    .line 129
    :catch_34
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showTipForGoodAuth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4e
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 102
    return-void
.end method

.method onAcquireFailed()V
    .registers 1

    .line 90
    return-void
.end method

.method onAuthenticated(Z)V
    .registers 2
    .param p1, "authenticated"    # Z

    .line 74
    return-void
.end method
