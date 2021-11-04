.class public Lcom/android/server/notification/EasyMuteController;
.super Ljava/lang/Object;
.source "EasyMuteController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;
    }
.end annotation


# instance fields
.field private final RINGTONE_PLAYER:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

.field private final mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIsRegister:Z

.field private mMethodRingtonePlayer:Ljava/lang/reflect/Method;

.field private mMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

.field private mMotionOn:Z

.field private mNotificationPlayerBinder:Landroid/os/IBinder;

.field private mOverTurnOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "EasyMuteController"

    iput-object v0, p0, Lcom/android/server/notification/EasyMuteController;->TAG:Ljava/lang/String;

    .line 40
    const-string v1, "android.media.IRingtonePlayer"

    iput-object v1, p0, Lcom/android/server/notification/EasyMuteController;->RINGTONE_PLAYER:Ljava/lang/String;

    .line 52
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 83
    new-instance v3, Lcom/android/server/notification/EasyMuteController$1;

    invoke-direct {v3, p0}, Lcom/android/server/notification/EasyMuteController$1;-><init>(Lcom/android/server/notification/EasyMuteController;)V

    iput-object v3, p0, Lcom/android/server/notification/EasyMuteController;->mMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    .line 55
    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    .line 56
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/EasyMuteController;->mHandler:Landroid/os/Handler;

    .line 57
    iget-object v3, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/server/notification/EasyMuteController;->mAudioManager:Landroid/media/AudioManager;

    .line 59
    new-instance v3, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    iget-object v4, p0, Lcom/android/server/notification/EasyMuteController;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;-><init>(Lcom/android/server/notification/EasyMuteController;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    .line 60
    iget-object v3, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 61
    const-string/jumbo v4, "master_motion"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    .line 60
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 62
    iget-object v3, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 63
    const-string/jumbo v4, "motion_overturn"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    .line 62
    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    iget-object v3, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    invoke-virtual {v3, v6}, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->onChange(Z)V

    .line 67
    :try_start_5d
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 68
    .local v1, "classRingtonePlayer":Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/app/INotificationPlayerOnCompletionListener;

    aput-object v4, v3, v6

    .line 72
    .local v3, "parameterRingtonePlayer":[Ljava/lang/Class;
    const-string/jumbo v4, "setOnCompletionListener"

    .line 73
    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;
    :try_end_71
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5d .. :try_end_71} :catch_7b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5d .. :try_end_71} :catch_72

    .end local v1    # "classRingtonePlayer":Ljava/lang/Class;
    .end local v3    # "parameterRingtonePlayer":[Ljava/lang/Class;
    goto :goto_83

    .line 77
    :catch_72
    move-exception v1

    .line 78
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    const-string v3, "NoSuchMethodException"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iput-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    goto :goto_84

    .line 74
    .end local v1    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_7b
    move-exception v1

    .line 75
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    const-string v3, "ClassNotFoundException"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iput-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    .line 80
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    :goto_83
    nop

    .line 81
    :goto_84
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/EasyMuteController;)Landroid/media/AudioManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/EasyMuteController;

    .line 38
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/EasyMuteController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/EasyMuteController;

    .line 38
    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/EasyMuteController;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/EasyMuteController;

    .line 38
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/notification/EasyMuteController;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/EasyMuteController;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 38
    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/notification/EasyMuteController;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/EasyMuteController;

    .line 38
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/notification/EasyMuteController;ZZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/EasyMuteController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/EasyMuteController;->setEasyMuteEnabled(ZZ)V

    return-void
.end method

.method private setEasyMuteEnabled(ZZ)V
    .registers 5
    .param p1, "isMotionOn"    # Z
    .param p2, "isOverTurnOn"    # Z

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EasyMute updated 1."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " 2."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EasyMuteController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mMotionOn:Z

    if-ne v0, p1, :cond_2e

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mOverTurnOn:Z

    if-eq v0, p2, :cond_27

    goto :goto_2e

    .line 125
    :cond_27
    const-string/jumbo v0, "setEasyMuteEnabled no setting changed"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 107
    :cond_2e
    :goto_2e
    iput-boolean p1, p0, Lcom/android/server/notification/EasyMuteController;->mMotionOn:Z

    .line 108
    iput-boolean p2, p0, Lcom/android/server/notification/EasyMuteController;->mOverTurnOn:Z

    .line 109
    if-eqz p1, :cond_4f

    if-eqz p2, :cond_4f

    .line 110
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-nez v0, :cond_48

    .line 111
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    .line 112
    const-string/jumbo v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    iput-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    goto :goto_5f

    .line 115
    :cond_48
    const-string/jumbo v0, "setEasyMuteEnabled mEasyMuteMotionManager in not null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 118
    :cond_4f
    const-string/jumbo v0, "setEasyMuteEnabled setting off"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    if-eqz v0, :cond_5c

    .line 120
    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    .line 122
    :cond_5c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 127
    :goto_5f
    return-void
.end method


# virtual methods
.method public isEnable()Z
    .registers 2

    .line 130
    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mMotionOn:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mOverTurnOn:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public registerListener()V
    .registers 8

    .line 134
    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->isEnable()Z

    move-result v0

    const-string v1, "EasyMuteController"

    if-eqz v0, :cond_77

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    if-nez v0, :cond_77

    .line 135
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-eqz v0, :cond_71

    .line 136
    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;I)V

    .line 138
    iput-boolean v3, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    .line 139
    const-string v0, "Reg. OverTurn"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    if-nez v0, :cond_7c

    .line 142
    new-array v0, v3, [Ljava/lang/Object;

    new-instance v2, Lcom/android/server/notification/EasyMuteController$2;

    invoke-direct {v2, p0}, Lcom/android/server/notification/EasyMuteController$2;-><init>(Lcom/android/server/notification/EasyMuteController;)V

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 153
    .local v0, "parameter":[Ljava/lang/Object;
    const/4 v2, 0x0

    :try_start_2c
    iget-object v4, p0, Lcom/android/server/notification/EasyMuteController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v4

    .line 154
    .local v4, "player":Landroid/media/IRingtonePlayer;
    iget-object v5, p0, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_6f

    .line 155
    iget-object v5, p0, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    invoke-virtual {v5, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    iput-object v5, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    .line 156
    new-instance v6, Lcom/android/server/notification/EasyMuteController$3;

    invoke-direct {v6, p0}, Lcom/android/server/notification/EasyMuteController$3;-><init>(Lcom/android/server/notification/EasyMuteController;)V

    invoke-interface {v5, v6, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_48
    .catch Ljava/lang/IllegalAccessException; {:try_start_2c .. :try_end_48} :catch_60
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2c .. :try_end_48} :catch_50
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_48} :catch_49

    goto :goto_6f

    .line 179
    .end local v4    # "player":Landroid/media/IRingtonePlayer;
    :catch_49
    move-exception v2

    .line 180
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 173
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_50
    move-exception v3

    .line 174
    .local v3, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "InvocationTargetException"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iput-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    .line 176
    iget-boolean v1, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    if-eqz v1, :cond_6f

    .line 177
    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    goto :goto_6f

    .line 167
    .end local v3    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_60
    move-exception v3

    .line 168
    .local v3, "ex":Ljava/lang/IllegalAccessException;
    const-string v4, "IllegalAccessException"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iput-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    .line 170
    iget-boolean v1, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    if-eqz v1, :cond_6f

    .line 171
    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    .line 181
    .end local v3    # "ex":Ljava/lang/IllegalAccessException;
    :cond_6f
    :goto_6f
    nop

    .line 182
    .end local v0    # "parameter":[Ljava/lang/Object;
    :goto_70
    goto :goto_7c

    .line 184
    :cond_71
    const-string v0, "Register failed. mEasyMuteMotionManager is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 187
    :cond_77
    const-string v0, "Register failed. already registered or setting not eanbled"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_7c
    :goto_7c
    return-void
.end method

.method public resetEasyMuteSettingObserver(I)V
    .registers 6
    .param p1, "userID"    # I

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetEasyMuteSettingObserver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EasyMuteController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 232
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->onChange(Z)V

    .line 233
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 234
    const-string/jumbo v1, "master_motion"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    .line 233
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 236
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 237
    const-string/jumbo v1, "motion_overturn"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    .line 236
    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 239
    return-void
.end method

.method public unregisterListener()V
    .registers 4

    .line 193
    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    const-string v1, "EasyMuteController"

    if-eqz v0, :cond_1e

    .line 194
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-eqz v0, :cond_18

    .line 195
    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;)V

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    .line 197
    const-string v0, "UnReg. OverTurn"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 199
    :cond_18
    const-string v0, "UnRegister failed. mEasyMuteMotionManager is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 202
    :cond_1e
    const-string v0, "UnRegister failed. no registered"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_23
    return-void
.end method
