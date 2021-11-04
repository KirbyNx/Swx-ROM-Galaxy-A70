.class public Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;
.super Landroid/os/Handler;
.source "TurnOverLighting.java"

# interfaces
.implements Lcom/android/server/notification/edgelighting/turnover/ScreenChecker$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;,
        Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;,
        Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateRinging;,
        Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateNotification;,
        Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateIdle;
    }
.end annotation


# static fields
.field private static final MSG_EXPIRE_SCREEN_CHECKER:I = 0x1

.field public static final SCREEN_DOWN:I = 0x1

.field public static final SCREEN_UNKNOWN:I = 0x0

.field public static final SCREEN_UP:I = 0x2

.field private static final STATE_MODE_CALL:I = 0x2

.field private static final STATE_MODE_IDLE:I = 0x0

.field private static final STATE_MODE_NOTIFICATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TurnOverLighting"

.field private static final TIMEOUT:I = 0x2710


# instance fields
.field private mCurrentStateMode:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;

.field private mListener:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;

.field private mScreenChecker:Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;

.field private mScreenState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 32
    new-instance v0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateIdle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateIdle;-><init>(Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$1;)V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mScreenState:I

    .line 37
    new-instance v0, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;

    invoke-direct {v0, p1}, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mScreenChecker:Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;

    .line 38
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;)Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;

    .line 9
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mScreenChecker:Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;)Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;

    .line 9
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mListener:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;

    return-object v0
.end method

.method private stopTurnOverLightingDelayed()V
    .registers 4

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->removeMessages(I)V

    .line 78
    :cond_a
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->sendEmptyMessageDelayed(IJ)Z

    .line 79
    return-void
.end method

.method private stopTurnOverLightingInternal()V
    .registers 4

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mScreenState:I

    .line 83
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;

    invoke-interface {v1}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_10

    const/4 v2, 0x2

    if-eq v1, v2, :cond_10

    goto :goto_23

    .line 86
    :cond_10
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mScreenChecker:Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;

    invoke-virtual {v1}, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;->cancel()V

    .line 87
    new-instance v1, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateIdle;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateIdle;-><init>(Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$1;)V

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;

    .line 88
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mListener:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;

    invoke-interface {v1, v0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;->onIdle(Z)V

    .line 89
    nop

    .line 93
    :goto_23
    return-void
.end method


# virtual methods
.method public getScreenState()I
    .registers 2

    .line 71
    iget v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mScreenState:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_a

    .line 108
    :cond_6
    invoke-direct {p0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->stopTurnOverLightingInternal()V

    .line 109
    nop

    .line 113
    :goto_a
    return-void
.end method

.method public onChanged(Z)V
    .registers 4
    .param p1, "screenDown"    # Z

    .line 97
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x2

    .line 98
    .local v0, "newScreenState":I
    :goto_5
    iget v1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mScreenState:I

    if-eq v1, v0, :cond_10

    .line 99
    iput v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mScreenState:I

    .line 100
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;

    invoke-interface {v1, v0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;->onScreenChanged(I)V

    .line 102
    :cond_10
    return-void
.end method

.method public setTurnOverLightingListener(Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;

    .line 41
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mListener:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;

    .line 42
    return-void
.end method

.method public startNotificationLighting()V
    .registers 4

    .line 45
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;

    invoke-interface {v0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;->onNotification()Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;

    move-result-object v0

    .line 46
    .local v0, "nextState":Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;
    invoke-interface {v0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_14

    const/4 v2, 0x2

    if-eq v1, v2, :cond_13

    .line 53
    iput-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;

    goto :goto_17

    .line 51
    :cond_13
    goto :goto_17

    .line 48
    :cond_14
    iput-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;

    .line 49
    nop

    .line 56
    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startNotificationLighting: mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;

    invoke-interface {v2}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mScreenState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TurnOverLighting"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-direct {p0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->stopTurnOverLightingDelayed()V

    .line 58
    return-void
.end method

.method public startRingingLighting()V
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;

    invoke-interface {v0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;->onRinging()Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;

    .line 62
    invoke-direct {p0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->stopTurnOverLightingDelayed()V

    .line 63
    return-void
.end method

.method public stopTurnOverLighting()V
    .registers 2

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->removeMessages(I)V

    .line 67
    invoke-direct {p0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->stopTurnOverLightingInternal()V

    .line 68
    return-void
.end method
