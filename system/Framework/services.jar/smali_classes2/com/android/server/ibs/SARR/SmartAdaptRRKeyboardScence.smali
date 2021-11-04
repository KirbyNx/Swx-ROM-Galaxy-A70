.class public Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;
.super Ljava/lang/Object;
.source "SmartAdaptRRKeyboardScence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$GestureListener;,
        Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$KeyboardBroadcastReceiver;,
        Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;
    }
.end annotation


# static fields
.field private static final FPS_DETECT_PERIOD:I = 0x3e8

.field private static final IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field private static final KEYBOARD_NORMAL_FPS:I = 0x78

.field private static final KEYBOARD_SCENCE_FPS:I = 0x32

.field private static final MSG_CHECK_FPS_STATUS:I = 0x12f

.field private static final MSG_KEYBOARD_OFF_ACTION:I = 0x12e

.field private static final MSG_KEYBOARD_ON_ACTION:I = 0x12d

.field private static final MSG_USER_CLICK_ACTION:I = 0x130

.field private static final MSG_USER_SCROLL_ACTION:I = 0x131

.field private static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field private static final TAG:Ljava/lang/String; = "SmartAdaptRRKeyboardScence"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFPSHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;

.field private mIsKeyboardShow:Z

.field public mKeyboardEnable:Z

.field private mLastPageCount:J

.field private mLastUserAction:Z

.field private mMultiWindowEnable:Z

.field private mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private final mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

.field private mSmartAdaptRRManager:Lcom/android/server/ibs/SARR/SmartAdaptRRManager;

.field private mWMS:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcom/android/server/ibs/SARR/SmartAdaptRRManager;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ht"    # Landroid/os/HandlerThread;
    .param p3, "sarr"    # Lcom/android/server/ibs/SARR/SmartAdaptRRManager;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mSmartAdaptRRManager:Lcom/android/server/ibs/SARR/SmartAdaptRRManager;

    .line 50
    iput-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 51
    iput-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mGestureDetector:Landroid/view/GestureDetector;

    .line 53
    iput-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mHandler:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;

    .line 55
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mIsKeyboardShow:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mMultiWindowEnable:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mLastUserAction:Z

    .line 59
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mLastPageCount:J

    .line 60
    iput-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mFPSHistoryList:Ljava/util/List;

    .line 62
    iput-boolean v1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mKeyboardEnable:Z

    .line 252
    new-instance v1, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$1;

    invoke-direct {v1, p0}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$1;-><init>(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)V

    iput-object v1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 65
    iput-object p1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mContext:Landroid/content/Context;

    .line 66
    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 68
    new-instance v1, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$KeyboardBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$KeyboardBroadcastReceiver;-><init>(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)V

    .line 69
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$GestureListener;

    invoke-direct {v3, p0, v0}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$GestureListener;-><init>(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mGestureDetector:Landroid/view/GestureDetector;

    .line 70
    nop

    .line 71
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mWMS:Lcom/android/server/wm/WindowManagerService;

    .line 72
    new-instance v0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;-><init>(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mHandler:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;

    .line 73
    iput-object p3, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mSmartAdaptRRManager:Lcom/android/server/ibs/SARR/SmartAdaptRRManager;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mFPSHistoryList:Ljava/util/List;

    .line 75
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    .line 32
    invoke-direct {p0}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->startKeyboardScenceDetect()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    .line 32
    iget-boolean v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mLastUserAction:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    .line 32
    invoke-direct {p0}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->resetKeyboardScenceStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    .line 32
    invoke-direct {p0}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->checkFPSstatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;
    .param p1, "x1"    # Z

    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->setKeyboardScenceAction(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    .line 32
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    .line 32
    iget-boolean v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mIsKeyboardShow:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    .line 32
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mHandler:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)Landroid/view/GestureDetector;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    .line 32
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    .line 32
    iget-boolean v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mMultiWindowEnable:Z

    return v0
.end method

.method private checkFPSstatus()V
    .registers 10

    .line 165
    iget-boolean v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mIsKeyboardShow:Z

    if-nez v0, :cond_5

    return-void

    .line 166
    :cond_5
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mSmartAdaptRRManager:Lcom/android/server/ibs/SARR/SmartAdaptRRManager;

    invoke-virtual {v0}, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->getPageCountFromSurfaceFlinger()J

    move-result-wide v7

    .line 167
    .local v7, "pageCount":J
    iget-object v1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mSmartAdaptRRManager:Lcom/android/server/ibs/SARR/SmartAdaptRRManager;

    const/16 v2, 0x3e8

    iget-wide v3, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mLastPageCount:J

    move-wide v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->calcFpsValue(IJJ)I

    move-result v0

    .line 168
    .local v0, "fps":I
    iput-wide v7, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mLastPageCount:J

    .line 169
    iget-object v1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mFPSHistoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 171
    .local v1, "size":I
    const/16 v2, 0x14

    if-ge v1, v2, :cond_2c

    .line 172
    iget-object v2, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mFPSHistoryList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 174
    :cond_2c
    iget-object v2, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mFPSHistoryList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 175
    iget-object v2, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mFPSHistoryList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :goto_3b
    iget-object v2, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mHandler:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;

    const/16 v3, 0x12f

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 179
    return-void
.end method

.method private getAvailableFPS()I
    .registers 7

    .line 152
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mFPSHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_b

    const/4 v0, -0x1

    return v0

    .line 153
    :cond_b
    const/4 v0, 0x0

    .line 154
    .local v0, "totalFPS":I
    iget-object v1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mFPSHistoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "SmartAdaptRRKeyboardScence"

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 155
    .local v2, "fps":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getAvailableFPS fps = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    add-int/2addr v0, v2

    .line 157
    .end local v2    # "fps":I
    goto :goto_12

    .line 159
    :cond_3a
    iget-object v1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mFPSHistoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int v1, v0, v1

    .line 160
    .local v1, "fpsValue":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get available fps = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return v1
.end method

.method private removeAllMessages()V
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mHandler:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;->removeMessages(I)V

    .line 205
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mHandler:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;

    const/16 v1, 0x12f

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;->removeMessages(I)V

    .line 206
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mHandler:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;->removeMessages(I)V

    .line 207
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mHandler:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;

    const/16 v1, 0x130

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;->removeMessages(I)V

    .line 208
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mHandler:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;

    const/16 v1, 0x131

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;->removeMessages(I)V

    .line 209
    return-void
.end method

.method private resetKeyboardScenceStatus()V
    .registers 5

    .line 192
    const-string v0, "SmartAdaptRRKeyboardScence"

    const-string/jumbo v1, "reset keyboard!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-boolean v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mIsKeyboardShow:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    .line 194
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mWMS:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    .line 195
    :cond_15
    iput-boolean v1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mIsKeyboardShow:Z

    .line 196
    invoke-direct {p0}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->removeAllMessages()V

    .line 197
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mLastPageCount:J

    .line 198
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mFPSHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 199
    invoke-direct {p0, v1}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->setKeyboardScenceAction(Z)V

    .line 200
    iput-boolean v1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mLastUserAction:Z

    .line 201
    return-void
.end method

.method private setKeyboardScenceAction(Z)V
    .registers 5
    .param p1, "isActionDown"    # Z

    .line 130
    iget-boolean v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mLastUserAction:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 131
    :cond_5
    const-string v0, "SmartAdaptRRKeyboardScence"

    if-eqz p1, :cond_3d

    .line 132
    iget-boolean v1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mMultiWindowEnable:Z

    if-nez v1, :cond_4a

    .line 133
    invoke-direct {p0}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->getAvailableFPS()I

    move-result v1

    .line 134
    .local v1, "Fps":I
    const/16 v2, 0x32

    if-gt v1, v2, :cond_37

    const/4 v2, -0x1

    if-ne v1, v2, :cond_19

    goto :goto_37

    .line 138
    :cond_19
    const-string/jumbo v2, "start set action!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mHandler:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;

    const/16 v2, 0x12f

    invoke-virtual {v0, v2}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 140
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mHandler:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;->removeMessages(I)V

    .line 142
    :cond_2e
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mSmartAdaptRRManager:Lcom/android/server/ibs/SARR/SmartAdaptRRManager;

    iget-object v0, v0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->mSmartAdaptRRAction:Lcom/android/server/ibs/SARR/SmartAdaptRRAction;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/ibs/SARR/SmartAdaptRRAction;->setRefreshRate(Z)Z

    .line 143
    .end local v1    # "Fps":I
    goto :goto_4a

    .line 135
    .restart local v1    # "Fps":I
    :cond_37
    :goto_37
    const-string v2, "FPS too high, can not set low RR!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void

    .line 145
    .end local v1    # "Fps":I
    :cond_3d
    const-string v1, "finish set action!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mSmartAdaptRRManager:Lcom/android/server/ibs/SARR/SmartAdaptRRManager;

    iget-object v0, v0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->mSmartAdaptRRAction:Lcom/android/server/ibs/SARR/SmartAdaptRRAction;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/SARR/SmartAdaptRRAction;->setRefreshRate(Z)Z

    .line 148
    :cond_4a
    :goto_4a
    iput-boolean p1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mLastUserAction:Z

    .line 149
    return-void
.end method

.method private startKeyboardScenceDetect()V
    .registers 5

    .line 182
    iget-boolean v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mIsKeyboardShow:Z

    if-nez v0, :cond_c

    .line 183
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mWMS:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    .line 184
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mIsKeyboardShow:Z

    .line 185
    iget-wide v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mLastPageCount:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1f

    .line 186
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mSmartAdaptRRManager:Lcom/android/server/ibs/SARR/SmartAdaptRRManager;

    invoke-virtual {v0}, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->getPageCountFromSurfaceFlinger()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mLastPageCount:J

    .line 188
    :cond_1f
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mHandler:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;

    const/16 v1, 0x12f

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 189
    return-void
.end method


# virtual methods
.method public notifySwichChange(Z)V
    .registers 2
    .param p1, "allow"    # Z

    .line 212
    if-nez p1, :cond_5

    .line 213
    invoke-direct {p0}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->resetKeyboardScenceStatus()V

    .line 215
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mKeyboardEnable:Z

    .line 216
    return-void
.end method
