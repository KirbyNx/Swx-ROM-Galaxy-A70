.class public Lcom/android/server/wm/ImmersiveModeConfirmation;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ImmersiveModeConfirmation$H;,
        Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;
    }
.end annotation


# static fields
.field private static final CONFIRMED:Ljava/lang/String; = "confirmed"

.field private static final DEBUG:Z = false

.field private static final DEBUG_SHOW_EVERY_TIME:Z = false

.field private static final DISABLE_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ImmersiveModeConfirmation"

.field private static sConfirmed:Z

.field private static sConfirmedForGesture:Z


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

.field private final mConfirm:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Z

.field private final mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field private final mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

.field private mListenerRegistered:Z

.field private mLockTaskState:I

.field private final mPanicThresholdMs:J

.field private mPanicTime:J

.field private final mShowDelayMs:J

.field private mVrImmersiveMode:Z

.field private mVrModeEnabled:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private final mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 135
    const-string v0, "com.samsung.android.video"

    const-string v1, "com.samsung.android.app.dtv.dmb"

    const-string v2, "com.samsung.android.app.dtv.sbtvd"

    const-string v3, "com.samsung.android.app.notes"

    const-string v4, "com.sec.android.app.launcher"

    const-string v5, "com.sec.android.gallery3d"

    const-string v6, "com.android.systemui"

    const-string v7, "com.sec.enterprise.knox.cloudmdm.smdms"

    const-string v8, "com.sec.knox.kccagent"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->DISABLE_PACKAGES:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Z)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "vrModeEnabled"    # Z

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowToken:Landroid/os/IBinder;

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mLockTaskState:I

    .line 114
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mCoverState:Z

    .line 115
    iput-boolean v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mListenerRegistered:Z

    .line 117
    new-instance v1, Lcom/android/server/wm/ImmersiveModeConfirmation$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$1;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation;)V

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 129
    iput-boolean v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mVrImmersiveMode:Z

    .line 737
    new-instance v0, Lcom/android/server/wm/ImmersiveModeConfirmation$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$2;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation;)V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 158
    .local v0, "display":Landroid/view/Display;
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 159
    .local v1, "uiContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_36

    .line 160
    move-object v2, v1

    goto :goto_3a

    :cond_36
    invoke-virtual {v1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    :goto_3a
    iput-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 161
    new-instance v2, Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    invoke-direct {v2, p0, p2}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    .line 162
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getNavBarExitDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mShowDelayMs:J

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0087

    .line 164
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicThresholdMs:J

    .line 165
    iput-boolean p3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    .line 166
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/android/server/wm/DisplayPolicy;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "vrModeEnabled"    # Z
    .param p4, "displayPolicy"    # Lcom/android/server/wm/DisplayPolicy;

    .line 151
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 152
    iput-object p4, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 153
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/wm/ImmersiveModeConfirmation;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation;
    .param p1, "x1"    # Z

    .line 90
    iput-boolean p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mCoverState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/android/server/wm/ImmersiveModeConfirmation$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/ImmersiveModeConfirmation;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/content/Context;)V
    .registers 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 90
    invoke-static {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->saveGestureSetting(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1200()Z
    .registers 1

    .line 90
    sget-boolean v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 90
    sput-boolean p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    return p0
.end method

.method static synthetic access$1300(Landroid/content/Context;)V
    .registers 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 90
    invoke-static {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->saveSetting(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/samsung/android/cover/CoverManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wm/ImmersiveModeConfirmation;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 90
    iget-boolean v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mListenerRegistered:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/wm/ImmersiveModeConfirmation;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation;
    .param p1, "x1"    # Z

    .line 90
    iput-boolean p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mListenerRegistered:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/samsung/android/cover/CoverManager$StateListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wm/ImmersiveModeConfirmation;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 90
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->handleHide()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/wm/ImmersiveModeConfirmation;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 90
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->handleShow()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/ImmersiveModeConfirmation;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 90
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/android/server/wm/DisplayPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-object v0
.end method

.method static synthetic access$900()Z
    .registers 1

    .line 90
    sget-boolean v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmedForGesture:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 90
    sput-boolean p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmedForGesture:Z

    return p0
.end method

.method private getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 4

    .line 356
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x31

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method private getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 8

    .line 331
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7e1

    const v4, 0x1000120

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 339
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    not-int v2, v2

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 340
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 341
    const-string v1, "ImmersiveModeConfirmation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 342
    const v1, 0x1030300

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 343
    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 346
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 350
    return-object v0
.end method

.method private getNavBarExitDuration()J
    .registers 4

    .line 179
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    const v1, 0x10a0036

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 180
    .local v0, "exit":Landroid/view/animation/Animation;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    goto :goto_12

    :cond_10
    const-wide/16 v1, 0x0

    :goto_12
    return-wide v1
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .registers 3

    .line 716
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_11

    .line 717
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 718
    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    .line 720
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private handleHide()V
    .registers 3

    .line 323
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz v0, :cond_10

    .line 325
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 328
    :cond_10
    return-void
.end method

.method private handleShow()V
    .registers 4

    .line 726
    new-instance v0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 729
    const/16 v1, 0x300

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->setSystemUiVisibility(I)V

    .line 733
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 734
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 735
    return-void
.end method

.method private isImmersiveModeAvailable(Lcom/android/server/wm/WindowState;)Z
    .registers 9
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 805
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    const-string v1, "ImmersiveModeConfirmation"

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    .line 806
    const-string v0, "Do nothing regarding immersiveModeConfirmation. clingWindow is not null."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    return v2

    .line 810
    :cond_d
    sget-object v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->DISABLE_PACKAGES:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do nothing regarding immersiveModeConfirmation. disablePackage="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 811
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    return v2

    .line 815
    :cond_32
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v0, v3, :cond_d1

    .line 816
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x63

    if-le v0, v4, :cond_47

    goto/16 :goto_d1

    .line 821
    :cond_47
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_57

    .line 822
    const-string v0, "Do nothing regarding immersiveModeConfirmation. Not fullscreen."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    return v2

    .line 825
    :cond_57
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    if-nez v0, :cond_cb

    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 827
    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_cb

    .line 828
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v0

    if-eqz v0, :cond_6a

    goto :goto_cb

    .line 832
    :cond_6a
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->isPreloadInstallComplete()Z

    move-result v0

    if-nez v0, :cond_76

    .line 833
    const-string v0, "Do nothing regarding immersiveModeConfirmation. Not preloadInstallComplete."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    return v2

    .line 847
    :cond_76
    iget-boolean v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mCoverState:Z

    if-nez v0, :cond_80

    .line 848
    const-string v0, "Do nothing regarding immersiveModeConfirmation. coverClosed."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    return v2

    .line 851
    :cond_80
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 852
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "ultra_powersaving_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_91

    move v0, v3

    goto :goto_92

    :cond_91
    move v0, v2

    .line 854
    .local v0, "maxPowerSavingModeEnabled":Z
    :goto_92
    if-eqz v0, :cond_9a

    .line 855
    const-string v3, "Do nothing regarding immersiveModeConfirmation. maxPowerSavingModeEnabled."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    return v2

    .line 859
    :cond_9a
    iget-object v4, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v4, :cond_aa

    .line 860
    iget-object v4, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 861
    const-string v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    iput-object v4, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 863
    :cond_aa
    iget-object v4, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v4

    .line 865
    .local v4, "talkBackEnabled":Z
    if-eqz v4, :cond_ba

    .line 866
    const-string v3, "Do nothing regarding immersiveModeConfirmation. talkBackEnabled."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    return v2

    .line 869
    :cond_ba
    iget-object v5, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v6, 0x20

    .line 870
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v5

    .line 872
    .local v5, "voiceAssistantEnabled":Z
    if-eqz v5, :cond_ca

    .line 873
    const-string v3, "Do nothing regarding immersiveModeConfirmation. voiceAssistantEnabled."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    return v2

    .line 877
    :cond_ca
    return v3

    .line 829
    .end local v0    # "maxPowerSavingModeEnabled":Z
    .end local v4    # "talkBackEnabled":Z
    .end local v5    # "voiceAssistantEnabled":Z
    :cond_cb
    :goto_cb
    const-string v0, "Do nothing regarding immersiveModeConfirmation. Factory test mode."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    return v2

    .line 817
    :cond_d1
    :goto_d1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do nothing regarding immersiveModeConfirmation. appWindow type="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 817
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    return v2
.end method

.method private isPreloadInstallComplete()Z
    .registers 3

    .line 881
    const-string/jumbo v0, "persist.sys.storage_preload"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static loadGestureSetting(ILandroid/content/Context;)Z
    .registers 8
    .param p0, "currentUserId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 216
    sget-boolean v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmedForGesture:Z

    .line 217
    .local v0, "wasConfirmed":Z
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmedForGesture:Z

    .line 219
    const/4 v2, 0x0

    .line 221
    .local v2, "value":Ljava/lang/String;
    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gesture_immersive_mode_confirmations"

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 224
    const-string v3, "confirmed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmedForGesture:Z
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_1b

    .line 229
    goto :goto_32

    .line 227
    :catchall_1b
    move-exception v3

    .line 228
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading confirmations, value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ImmersiveModeConfirmation"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_32
    sget-boolean v3, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmedForGesture:Z

    if-eq v3, v0, :cond_37

    const/4 v1, 0x1

    :cond_37
    return v1
.end method

.method static loadSetting(ILandroid/content/Context;)Z
    .registers 8
    .param p0, "currentUserId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 184
    sget-boolean v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    .line 185
    .local v0, "wasConfirmed":Z
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    .line 187
    const/4 v2, 0x0

    .line 189
    .local v2, "value":Ljava/lang/String;
    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "immersive_mode_confirmations"

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 192
    const-string v3, "confirmed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1c

    .line 196
    goto :goto_33

    .line 194
    :catchall_1c
    move-exception v3

    .line 195
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading confirmations, value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ImmersiveModeConfirmation"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_33
    sget-boolean v3, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    if-eq v3, v0, :cond_38

    const/4 v1, 0x1

    :cond_38
    return v1
.end method

.method private static saveGestureSetting(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 236
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmedForGesture:Z

    if-eqz v0, :cond_7

    const-string v0, "confirmed"

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 237
    .local v0, "value":Ljava/lang/String;
    :goto_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gesture_immersive_mode_confirmations"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_14

    .line 245
    nop

    .end local v0    # "value":Ljava/lang/String;
    goto :goto_2d

    .line 242
    :catchall_14
    move-exception v0

    .line 243
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error saving confirmations, sConfirmedForGesture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmedForGesture:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImmersiveModeConfirmation"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2d
    return-void
.end method

.method private static saveSetting(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 203
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    if-eqz v0, :cond_7

    const-string v0, "confirmed"

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 204
    .local v0, "value":Ljava/lang/String;
    :goto_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "immersive_mode_confirmations"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_15

    .line 211
    nop

    .end local v0    # "value":Ljava/lang/String;
    goto :goto_2e

    .line 209
    :catchall_15
    move-exception v0

    .line 210
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error saving confirmations, sConfirmed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImmersiveModeConfirmation"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2e
    return-void
.end method


# virtual methods
.method confirmCurrentPrompt()V
    .registers 3

    .line 316
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz v0, :cond_b

    .line 318
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->post(Ljava/lang/Runnable;)Z

    .line 320
    :cond_b
    return-void
.end method

.method getWindowToken()Landroid/os/IBinder;
    .registers 2

    .line 374
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public hideImmersiveModeConfirmation()V
    .registers 3

    .line 913
    sget-boolean v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    if-nez v0, :cond_10

    .line 914
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->removeMessages(I)V

    .line 915
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->sendEmptyMessage(I)Z

    .line 918
    :cond_10
    return-void
.end method

.method immersiveModeChangedLw(Ljava/lang/String;ZZZLcom/android/server/wm/WindowState;)V
    .registers 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "isImmersiveMode"    # Z
    .param p3, "userSetupComplete"    # Z
    .param p4, "navBarEmpty"    # Z
    .param p5, "win"    # Lcom/android/server/wm/WindowState;

    .line 254
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->removeMessages(I)V

    .line 255
    if-eqz p2, :cond_6f

    .line 257
    const/4 v0, 0x0

    .line 262
    .local v0, "ignoreImmersiveModeConfirmation":Z
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->disableImmersiveConfirmation(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v2, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    move v2, v1

    .line 266
    .local v2, "disabled":Z
    :goto_15
    if-nez v2, :cond_54

    sget-boolean v3, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    if-nez v3, :cond_25

    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 270
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicyExt;->isNavigationGestureMode()Z

    move-result v3

    if-eqz v3, :cond_33

    :cond_25
    sget-boolean v3, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmedForGesture:Z

    if-nez v3, :cond_54

    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 272
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicyExt;->isNavigationGestureMode()Z

    move-result v3

    if-eqz v3, :cond_54

    :cond_33
    if-eqz p3, :cond_54

    iget-boolean v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    if-nez v3, :cond_54

    if-nez p4, :cond_54

    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 277
    invoke-static {v3}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_54

    iget v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mLockTaskState:I

    if-eq v3, v1, :cond_54

    .line 280
    invoke-direct {p0, p5}, Lcom/android/server/wm/ImmersiveModeConfirmation;->isImmersiveModeAvailable(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 282
    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    iget-wide v4, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mShowDelayMs:J

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->sendEmptyMessageDelayed(IJ)Z

    .line 285
    :cond_54
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_6e

    iget-boolean v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mListenerRegistered:Z

    if-eqz v1, :cond_6e

    sget-boolean v1, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    if-eqz v1, :cond_6e

    sget-boolean v1, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmedForGesture:Z

    if-eqz v1, :cond_6e

    .line 289
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$ImmersiveModeConfirmation$k-aOMUQcjXV_5Q7IHgOvr3oIDbA;

    invoke-direct {v3, p0}, Lcom/android/server/wm/-$$Lambda$ImmersiveModeConfirmation$k-aOMUQcjXV_5Q7IHgOvr3oIDbA;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation;)V

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->post(Ljava/lang/Runnable;)Z

    .line 295
    .end local v0    # "ignoreImmersiveModeConfirmation":Z
    .end local v2    # "disabled":Z
    :cond_6e
    goto :goto_75

    .line 296
    :cond_6f
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->sendEmptyMessage(I)Z

    .line 298
    :goto_75
    return-void
.end method

.method public synthetic lambda$immersiveModeChangedLw$0$ImmersiveModeConfirmation()V
    .registers 3

    .line 290
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mListenerRegistered:Z

    .line 292
    return-void
.end method

.method public synthetic lambda$showOkButton$1$ImmersiveModeConfirmation()V
    .registers 2

    .line 889
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz v0, :cond_7

    .line 890
    # invokes: Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->updateLayout()V
    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->access$2000(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V

    .line 892
    :cond_7
    return-void
.end method

.method onLockTaskModeChangedLw(I)V
    .registers 2
    .param p1, "lockTaskState"    # I

    .line 800
    iput p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mLockTaskState:I

    .line 801
    return-void
.end method

.method onPowerKeyDown(ZJZZ)Z
    .registers 11
    .param p1, "isScreenOn"    # Z
    .param p2, "time"    # J
    .param p4, "inImmersiveMode"    # Z
    .param p5, "navBarEmpty"    # Z

    .line 302
    const/4 v0, 0x0

    if-nez p1, :cond_13

    iget-wide v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicTime:J

    sub-long v1, p2, v1

    iget-wide v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicThresholdMs:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_13

    .line 304
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    if-nez v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    .line 306
    :cond_13
    if-eqz p1, :cond_1c

    if-eqz p4, :cond_1c

    if-nez p5, :cond_1c

    .line 308
    iput-wide p2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicTime:J

    goto :goto_20

    .line 310
    :cond_1c
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicTime:J

    .line 312
    :goto_20
    return v0
.end method

.method onVrStateChangedLw(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 792
    iput-boolean p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    .line 793
    if-eqz p1, :cond_10

    .line 794
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->removeMessages(I)V

    .line 795
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->sendEmptyMessage(I)Z

    .line 797
    :cond_10
    return-void
.end method

.method showOkButton()V
    .registers 3

    .line 885
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz v0, :cond_15

    .line 887
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mShowOkButton:Z

    .line 888
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    # getter for: Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->access$1900(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ImmersiveModeConfirmation$13uWclDxhQrM-39sFJv3Kb4mHJE;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$ImmersiveModeConfirmation$13uWclDxhQrM-39sFJv3Kb4mHJE;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 894
    :cond_15
    return-void
.end method

.method systemReady()V
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_19

    .line 171
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 172
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mListenerRegistered:Z

    .line 175
    :cond_19
    return-void
.end method

.method updateVrImmersiveMode(Z)V
    .registers 4
    .param p1, "vrImmersiveMode"    # Z

    .line 898
    iget-boolean v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mVrImmersiveMode:Z

    if-eq v0, p1, :cond_14

    .line 899
    iput-boolean p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mVrImmersiveMode:Z

    .line 900
    if-eqz p1, :cond_14

    .line 901
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->removeMessages(I)V

    .line 902
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->sendEmptyMessage(I)Z

    .line 905
    :cond_14
    return-void
.end method
