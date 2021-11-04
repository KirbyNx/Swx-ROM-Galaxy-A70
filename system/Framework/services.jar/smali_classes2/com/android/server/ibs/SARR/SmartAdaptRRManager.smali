.class public Lcom/android/server/ibs/SARR/SmartAdaptRRManager;
.super Ljava/lang/Object;
.source "SmartAdaptRRManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ibs/SARR/SmartAdaptRRManager$SARRManagerHanlder;
    }
.end annotation


# static fields
.field public static final HIGH_FPS:I = 0x78

.field public static final NORMAL_FPS:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "SmartAdaptRRManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntelligentBatterySaverService:Lcom/android/server/ibs/IntelligentBatterySaverService;

.field private mLastPagecount:J

.field private mLastTime:J

.field private mRefreshRate:I

.field private mSARRManagerHanlder:Lcom/android/server/ibs/SARR/SmartAdaptRRManager$SARRManagerHanlder;

.field public mSFSevices:Landroid/os/IBinder;

.field private mScreenOnOff:Z

.field public mSmartAdaptRRAction:Lcom/android/server/ibs/SARR/SmartAdaptRRAction;

.field private mSmartAdaptRRKeyboardScence:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

.field private mWindowmanager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ibs/IntelligentBatterySaverService;Landroid/os/HandlerThread;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ibs"    # Lcom/android/server/ibs/IntelligentBatterySaverService;
    .param p3, "ht"    # Landroid/os/HandlerThread;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->mSARRManagerHanlder:Lcom/android/server/ibs/SARR/SmartAdaptRRManager$SARRManagerHanlder;

    .line 46
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->mLastPagecount:J

    .line 47
    iput-wide v1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->mLastTime:J

    .line 51
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->mScreenOnOff:Z

    .line 53
    iput-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->mSmartAdaptRRAction:Lcom/android/server/ibs/SARR/SmartAdaptRRAction;

    .line 54
    iput-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->mSmartAdaptRRKeyboardScence:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    .line 57
    iput-object p2, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->mIntelligentBatterySaverService:Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 58
    iput-object p1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p0}, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->getSurfaceFlingerServices()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->mSFSevices:Landroid/os/IBinder;

    .line 60
    new-instance v0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager$SARRManagerHanlder;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ibs/SARR/SmartAdaptRRManager$SARRManagerHanlder;-><init>(Lcom/android/server/ibs/SARR/SmartAdaptRRManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->mSARRManagerHanlder:Lcom/android/server/ibs/SARR/SmartAdaptRRManager$SARRManagerHanlder;

    .line 61
    new-instance v0, Lcom/android/server/ibs/SARR/SmartAdaptRRAction;

    invoke-direct {v0, p1, p0}, Lcom/android/server/ibs/SARR/SmartAdaptRRAction;-><init>(Landroid/content/Context;Lcom/android/server/ibs/SARR/SmartAdaptRRManager;)V

    iput-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->mSmartAdaptRRAction:Lcom/android/server/ibs/SARR/SmartAdaptRRAction;

    .line 62
    new-instance v0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    invoke-direct {v0, p1, p3, p0}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcom/android/server/ibs/SARR/SmartAdaptRRManager;)V

    iput-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->mSmartAdaptRRKeyboardScence:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    .line 63
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->mWindowmanager:Landroid/view/WindowManager;

    .line 64
    return-void
.end method


# virtual methods
.method public calcFpsValue(IJJ)I
    .registers 11
    .param p1, "timeInterval"    # I
    .param p2, "lastPageCount"    # J
    .param p4, "nowPageCount"    # J

    .line 111
    const/4 v0, -0x1

    .line 112
    .local v0, "fps":I
    sub-long v1, p4, p2

    int-to-long v3, p1

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 113
    return v0
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 136
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    const-string v0, "SARR dump info :"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->getRefreshRate()F

    move-result v0

    .line 139
    .local v0, "RR":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SARR RefreshRate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    const-string v1, "SARR switch status :"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mKeyboardEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->mSmartAdaptRRKeyboardScence:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    iget-boolean v2, v2, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mKeyboardEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    array-length v1, p2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_63

    .line 145
    const/4 v1, 0x0

    aget-object v2, p2, v1

    const-string/jumbo v3, "key_swich"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 146
    const/4 v2, 0x1

    aget-object v3, p2, v2

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 147
    invoke-virtual {p0, v2}, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->setSarrRuleSwitch(Z)V

    goto :goto_63

    .line 149
    :cond_60
    invoke-virtual {p0, v1}, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->setSarrRuleSwitch(Z)V

    .line 153
    :cond_63
    :goto_63
    return-void
.end method

.method public getPageCountFromSurfaceFlinger()J
    .registers 8

    .line 81
    const-wide/16 v0, -0x1

    .line 82
    .local v0, "pageCount":J
    iget-object v2, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->mSFSevices:Landroid/os/IBinder;

    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->getSurfaceFlingerServices()Landroid/os/IBinder;

    .line 84
    :cond_9
    iget-object v2, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->mSFSevices:Landroid/os/IBinder;

    if-eqz v2, :cond_36

    .line 86
    :try_start_d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 87
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 88
    .local v3, "reply":Landroid/os/Parcel;
    const-string v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 89
    iget-object v4, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->mSFSevices:Landroid/os/IBinder;

    const/16 v5, 0x3f5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 91
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-wide v0, v4

    .line 92
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 93
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2d} :catch_2e

    .line 96
    .end local v2    # "data":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    goto :goto_36

    .line 94
    :catch_2e
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SmartAdaptRRManager"

    const-string v4, " Binder call failed! "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_36
    :goto_36
    return-wide v0
.end method

.method public getRefreshRate()F
    .registers 4

    .line 123
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->mWindowmanager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    .line 124
    .local v0, "display":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " display = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartAdaptRRManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return v0
.end method

.method public getSurfaceFlingerServices()Landroid/os/IBinder;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->mSFSevices:Landroid/os/IBinder;

    if-nez v0, :cond_f

    .line 103
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->mSFSevices:Landroid/os/IBinder;

    .line 104
    if-eqz v0, :cond_f

    .line 105
    return-object v0

    .line 107
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyScreenChange(Z)V
    .registers 2
    .param p1, "screenOnOff"    # Z

    .line 117
    iput-boolean p1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->mScreenOnOff:Z

    .line 118
    nop

    .line 120
    return-void
.end method

.method public setSarrRuleSwitch(Z)V
    .registers 3
    .param p1, "allow"    # Z

    .line 129
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->mSmartAdaptRRKeyboardScence:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    iget-boolean v0, v0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mKeyboardEnable:Z

    if-ne p1, v0, :cond_7

    return-void

    .line 131
    :cond_7
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->mSmartAdaptRRKeyboardScence:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    invoke-virtual {v0, p1}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->notifySwichChange(Z)V

    .line 132
    return-void
.end method
