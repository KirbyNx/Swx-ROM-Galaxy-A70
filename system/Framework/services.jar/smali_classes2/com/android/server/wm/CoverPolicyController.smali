.class public Lcom/android/server/wm/CoverPolicyController;
.super Ljava/lang/Object;
.source "CoverPolicyController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/CoverPolicyController$CoverPolicyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "CoverPolicyController"

.field private static sCoverState:Lcom/samsung/android/cover/CoverState;


# instance fields
.field private mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/IApplicationToken;",
            ">;"
        }
    .end annotation
.end field

.field private mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field private final mCoverSupported:Z

.field mCoverWindow:Lcom/android/server/wm/WindowState;

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDisplayPolicyExt:Lcom/android/server/wm/DisplayPolicyExt;

.field private mHandler:Landroid/os/Handler;

.field mHideSViewCoverWindowState:Lcom/android/server/wm/WindowState;

.field mLastClearCoverState:Z

.field private mLastCoverAppCovered:Z

.field private mWallpaperTargetMayChange:Z

.field private mWindowPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 72
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/wm/CoverPolicyController;->DEBUG:Z

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/CoverPolicyController;->sCoverState:Lcom/samsung/android/cover/CoverState;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/DisplayPolicyExt;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayPolicyExt"    # Lcom/android/server/wm/DisplayPolicyExt;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/CoverPolicyController;->mCoverWindow:Lcom/android/server/wm/WindowState;

    .line 83
    iput-object v0, p0, Lcom/android/server/wm/CoverPolicyController;->mHideSViewCoverWindowState:Lcom/android/server/wm/WindowState;

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CoverPolicyController;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/CoverPolicyController;->mWallpaperTargetMayChange:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/server/wm/CoverPolicyController;->mLastClearCoverState:Z

    .line 90
    new-instance v1, Lcom/android/server/wm/CoverPolicyController$CoverPolicyHandler;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wm/CoverPolicyController$CoverPolicyHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wm/CoverPolicyController;->mHandler:Landroid/os/Handler;

    .line 93
    iput-object p2, p0, Lcom/android/server/wm/CoverPolicyController;->mDisplayPolicyExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 94
    iget-object v1, p2, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v1, p0, Lcom/android/server/wm/CoverPolicyController;->mWindowPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 95
    iget-object v1, p2, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-object v1, p0, Lcom/android/server/wm/CoverPolicyController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.cover.flip"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.cover.clearcover"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.cover.sview"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    :cond_55
    const/4 v0, 0x1

    :cond_56
    iput-boolean v0, p0, Lcom/android/server/wm/CoverPolicyController;->mCoverSupported:Z

    .line 102
    if-eqz v0, :cond_67

    .line 103
    invoke-direct {p0}, Lcom/android/server/wm/CoverPolicyController;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/CoverPolicyController;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    .line 104
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    sput-object v0, Lcom/android/server/wm/CoverPolicyController;->sCoverState:Lcom/samsung/android/cover/CoverState;

    .line 106
    :cond_67
    return-void
.end method

.method private belowNotificationShade(Lcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 213
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicyController;->mWindowPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/CoverPolicyController;->mWindowPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 214
    const/16 v2, 0x7f8

    invoke-interface {v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v1

    if-ge v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 213
    :goto_13
    return v0
.end method

.method private declared-synchronized getCoverManager()Lcom/samsung/android/cover/ICoverManager;
    .registers 3

    monitor-enter p0

    .line 119
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicyController;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_1b

    .line 120
    const-string v0, "cover"

    .line 121
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/CoverPolicyController;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    .line 122
    if-nez v0, :cond_1b

    .line 123
    const-string v0, "CoverPolicyController"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local p0    # "this":Lcom/android/server/wm/CoverPolicyController;
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicyController;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-object v0

    .line 118
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getCoverState()Lcom/samsung/android/cover/CoverState;
    .registers 1

    .line 340
    sget-object v0, Lcom/android/server/wm/CoverPolicyController;->sCoverState:Lcom/samsung/android/cover/CoverState;

    return-object v0
.end method

.method private isCoverAppSupported()Z
    .registers 4

    .line 353
    iget-boolean v0, p0, Lcom/android/server/wm/CoverPolicyController;->mCoverSupported:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 354
    sget-object v0, Lcom/android/server/wm/CoverPolicyController;->sCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_28

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_27

    sget-object v0, Lcom/android/server/wm/CoverPolicyController;->sCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_27

    sget-object v0, Lcom/android/server/wm/CoverPolicyController;->sCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v2, 0xf

    if-eq v0, v2, :cond_27

    sget-object v0, Lcom/android/server/wm/CoverPolicyController;->sCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_28

    :cond_27
    const/4 v1, 0x1

    :cond_28
    return v1

    .line 360
    :cond_29
    return v1
.end method

.method private processSetAppCoveredResultLw(I)Z
    .registers 3
    .param p1, "result"    # I

    .line 451
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_b

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_9

    goto :goto_b

    .line 455
    :cond_9
    const/4 v0, 0x0

    return v0

    .line 453
    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method private shouldBeShownByViewCover(Lcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 240
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicyController;->isCoverSupportedAndClosed()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 241
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getCoverMode()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    if-eq v0, v1, :cond_1c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_17

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1c

    goto :goto_31

    .line 243
    :cond_17
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->willBeHideSViewCoverOnce()Z

    move-result v0

    return v0

    .line 246
    :cond_1c
    return v1

    .line 248
    :cond_1d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d5

    if-eq v0, v2, :cond_30

    const/16 v2, 0x7e4

    if-eq v0, v2, :cond_30

    const/16 v2, 0x7e5

    if-eq v0, v2, :cond_30

    goto :goto_31

    .line 252
    :cond_30
    return v1

    .line 256
    :cond_31
    :goto_31
    const/4 v0, 0x0

    return v0
.end method

.method private updateOrientationListener()V
    .registers 3

    .line 459
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$CoverPolicyController$RPg3WN3gJuzqaXst1IwItrpOLOY;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$CoverPolicyController$RPg3WN3gJuzqaXst1IwItrpOLOY;-><init>(Lcom/android/server/wm/CoverPolicyController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 464
    return-void
.end method

.method private windowAttrsHasShowWallpaperOrShowWhenLocked(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 261
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_11

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method


# virtual methods
.method applyForceHidePolicyLw(Lcom/android/server/wm/WindowState;)Z
    .registers 6
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CoverPolicyController;->canBeHiddenByViewCoverLw(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const-string v1, "CoverPolicyController"

    const/4 v2, 0x0

    if-nez v0, :cond_36

    invoke-virtual {p0, p1}, Lcom/android/server/wm/CoverPolicyController;->isSViewCoverDialog(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_36

    .line 168
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/wm/CoverPolicyController;->shouldBeShownByViewCover(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 169
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowState;->showLw(Z)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 170
    sget-boolean v0, Lcom/android/server/wm/CoverPolicyController;->DEBUG:Z

    if-eqz v0, :cond_bb

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Policy show by cover (case2), win="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bb

    .line 144
    :cond_36
    :goto_36
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CoverPolicyController;->shouldBeHiddenByViewCover(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_6e

    .line 145
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 146
    sget-boolean v0, Lcom/android/server/wm/CoverPolicyController;->DEBUG:Z

    if-eqz v0, :cond_5b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Policy hide by cover, win="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_5b
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CoverPolicyController;->isSViewCoverDialog(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_bb

    .line 148
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/CoverPolicyController;->windowAttrsHasShowWallpaperOrShowWhenLocked(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 149
    iput-boolean v3, p0, Lcom/android/server/wm/CoverPolicyController;->mWallpaperTargetMayChange:Z

    goto :goto_bb

    .line 153
    :cond_6e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/android/server/wm/CoverPolicyController;->mDisplayPolicyExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    .line 154
    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicyExt;->canBeForceHiddenByAodLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-nez v0, :cond_bb

    goto :goto_8b

    :cond_83
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicyController;->mWindowPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 155
    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-nez v0, :cond_bb

    .line 156
    :goto_8b
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowState;->showLw(Z)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 157
    sget-boolean v0, Lcom/android/server/wm/CoverPolicyController;->DEBUG:Z

    if-eqz v0, :cond_a9

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Policy show cover (case1), win="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_a9
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CoverPolicyController;->isSViewCoverDialog(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_bb

    .line 161
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/CoverPolicyController;->windowAttrsHasShowWallpaperOrShowWhenLocked(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 162
    iput-boolean v3, p0, Lcom/android/server/wm/CoverPolicyController;->mWallpaperTargetMayChange:Z

    .line 176
    :cond_bb
    :goto_bb
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicyController;->isCoverSupportedAndClosed()Z

    move-result v0

    return v0
.end method

.method applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 8
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 267
    invoke-direct {p0}, Lcom/android/server/wm/CoverPolicyController;->isCoverAppSupported()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicyController;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 268
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canAffectSystemUiFlags()Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/android/server/wm/CoverPolicyController;->mHideSViewCoverWindowState:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_6e

    .line 269
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getCoverMode()I

    move-result v0

    .line 270
    .local v0, "coverMode":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    if-eqz v0, :cond_25

    move v1, v2

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    .line 271
    .local v1, "applyWindow":Z
    :goto_26
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v3

    .line 273
    .local v3, "appToken":Landroid/view/IApplicationToken;
    if-eqz v1, :cond_6e

    .line 274
    if-ne v0, v2, :cond_34

    .line 275
    iget-object v2, p0, Lcom/android/server/wm/CoverPolicyController;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 276
    :cond_34
    const/4 v2, 0x2

    if-ne v0, v2, :cond_43

    .line 277
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->willBeHideSViewCoverOnce()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 278
    iget-object v2, p0, Lcom/android/server/wm/CoverPolicyController;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 280
    :cond_43
    if-eqz v3, :cond_4a

    .line 281
    iget-object v2, p0, Lcom/android/server/wm/CoverPolicyController;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_4a
    :goto_4a
    iget-object v2, p0, Lcom/android/server/wm/CoverPolicyController;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 284
    iput-object p1, p0, Lcom/android/server/wm/CoverPolicyController;->mHideSViewCoverWindowState:Lcom/android/server/wm/WindowState;

    .line 285
    sget-boolean v2, Lcom/android/server/wm/CoverPolicyController;->DEBUG:Z

    if-eqz v2, :cond_6e

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hide sview cover :  SViewCoverWindow = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CoverPolicyController"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .end local v0    # "coverMode":I
    .end local v1    # "applyWindow":Z
    .end local v3    # "appToken":Landroid/view/IApplicationToken;
    :cond_6e
    return-void
.end method

.method beginPostLayoutPolicyLw()V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicyController;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/CoverPolicyController;->mHideSViewCoverWindowState:Lcom/android/server/wm/WindowState;

    .line 134
    sget-object v0, Lcom/android/server/wm/CoverPolicyController;->sCoverState:Lcom/samsung/android/cover/CoverState;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-nez v0, :cond_13

    .line 135
    iput-boolean v1, p0, Lcom/android/server/wm/CoverPolicyController;->mLastCoverAppCovered:Z

    .line 137
    :cond_13
    iput-boolean v1, p0, Lcom/android/server/wm/CoverPolicyController;->mWallpaperTargetMayChange:Z

    .line 139
    return-void
.end method

.method public canBeHiddenByViewCoverLw(Lcom/android/server/wm/WindowState;)Z
    .registers 6
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 182
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getCoverMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    const/16 v1, 0xa

    if-eq v0, v1, :cond_19

    goto :goto_3d

    .line 203
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->willBeHideSViewCoverOnce()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 204
    return v2

    .line 201
    :cond_19
    return v2

    .line 184
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    if-eq v0, v3, :cond_43

    const/16 v3, 0x7d5

    if-eq v0, v3, :cond_43

    const/16 v3, 0x7d9

    if-eq v0, v3, :cond_42

    const/16 v1, 0x7dd

    if-eq v0, v1, :cond_43

    const/16 v1, 0x7f8

    if-eq v0, v1, :cond_43

    const/16 v1, 0x7e3

    if-eq v0, v1, :cond_43

    const/16 v1, 0x7e4

    if-eq v0, v1, :cond_43

    .line 196
    nop

    .line 209
    :cond_3d
    :goto_3d
    invoke-direct {p0, p1}, Lcom/android/server/wm/CoverPolicyController;->belowNotificationShade(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0

    .line 194
    :cond_42
    return v1

    .line 191
    :cond_43
    return v2
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 466
    iget-boolean v0, p0, Lcom/android/server/wm/CoverPolicyController;->mCoverSupported:Z

    if-nez v0, :cond_5

    .line 467
    return-void

    .line 470
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "CoverPolicyController"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 473
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicyController;->mCoverWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_30

    .line 474
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCoverWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/CoverPolicyController;->mCoverWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 476
    :cond_30
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicyController;->mHideSViewCoverWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_42

    .line 477
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 478
    const-string/jumbo v0, "mHideSViewCoverWindowState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/CoverPolicyController;->mHideSViewCoverWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 480
    :cond_42
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastCoverAppCovered="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/CoverPolicyController;->mLastCoverAppCovered:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 481
    return-void
.end method

.method finishPostLayoutPolicyLw(I)I
    .registers 5
    .param p1, "changes"    # I

    .line 297
    iget-boolean v0, p0, Lcom/android/server/wm/CoverPolicyController;->mWallpaperTargetMayChange:Z

    if-eqz v0, :cond_6

    .line 298
    or-int/lit8 p1, p1, 0x4

    .line 301
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicyController;->isViewCoverAttached()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 302
    sget-boolean v0, Lcom/android/server/wm/CoverPolicyController;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishPostLayoutPolicyLw : mHideSViewCoverWindowState ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/CoverPolicyController;->mHideSViewCoverWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverPolicyController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_28
    const/4 v0, 0x0

    .line 308
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/server/wm/CoverPolicyController;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v1, :cond_33

    invoke-direct {p0}, Lcom/android/server/wm/CoverPolicyController;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/CoverPolicyController;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    .line 309
    :cond_33
    iget-object v1, p0, Lcom/android/server/wm/CoverPolicyController;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-eqz v1, :cond_7d

    iget-object v1, p0, Lcom/android/server/wm/CoverPolicyController;->mDisplayPolicyExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 310
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_7d

    .line 312
    :try_start_41
    iget-object v1, p0, Lcom/android/server/wm/CoverPolicyController;->mHideSViewCoverWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_5b

    .line 313
    iget-boolean v1, p0, Lcom/android/server/wm/CoverPolicyController;->mLastCoverAppCovered:Z

    if-nez v1, :cond_70

    .line 314
    iget-object v1, p0, Lcom/android/server/wm/CoverPolicyController;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/samsung/android/cover/ICoverManager;->onCoverAppCovered(Z)I

    move-result v1

    move v0, v1

    .line 315
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_70

    .line 316
    iput-boolean v2, p0, Lcom/android/server/wm/CoverPolicyController;->mLastCoverAppCovered:Z

    .line 317
    invoke-direct {p0}, Lcom/android/server/wm/CoverPolicyController;->updateOrientationListener()V

    goto :goto_70

    .line 320
    :cond_5b
    iget-boolean v1, p0, Lcom/android/server/wm/CoverPolicyController;->mLastCoverAppCovered:Z

    if-eqz v1, :cond_70

    .line 321
    iget-object v1, p0, Lcom/android/server/wm/CoverPolicyController;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/samsung/android/cover/ICoverManager;->onCoverAppCovered(Z)I

    move-result v1

    move v0, v1

    .line 322
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_70

    .line 323
    iput-boolean v2, p0, Lcom/android/server/wm/CoverPolicyController;->mLastCoverAppCovered:Z

    .line 324
    invoke-direct {p0}, Lcom/android/server/wm/CoverPolicyController;->updateOrientationListener()V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_70} :catch_71

    .line 329
    :cond_70
    :goto_70
    goto :goto_75

    .line 327
    :catch_71
    move-exception v1

    .line 328
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 330
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_75
    invoke-direct {p0, v0}, Lcom/android/server/wm/CoverPolicyController;->processSetAppCoveredResultLw(I)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 331
    or-int/lit8 p1, p1, 0x1

    .line 336
    .end local v0    # "result":I
    :cond_7d
    return p1
.end method

.method public isClearTypeCoverClosed()Z
    .registers 3

    .line 404
    iget-boolean v0, p0, Lcom/android/server/wm/CoverPolicyController;->mCoverSupported:Z

    if-eqz v0, :cond_36

    .line 405
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicyController;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Lcom/android/server/wm/CoverPolicyController;->sCoverState:Lcom/samsung/android/cover/CoverState;

    .line 406
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_28

    sget-object v0, Lcom/android/server/wm/CoverPolicyController;->sCoverState:Lcom/samsung/android/cover/CoverState;

    .line 407
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_28

    sget-object v0, Lcom/android/server/wm/CoverPolicyController;->sCoverState:Lcom/samsung/android/cover/CoverState;

    .line 408
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_36

    .line 409
    :cond_28
    sget-boolean v0, Lcom/android/server/wm/CoverPolicyController;->DEBUG:Z

    if-eqz v0, :cond_34

    const-string v0, "CoverPolicyController"

    const-string/jumbo v1, "non flip type cover closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_34
    const/4 v0, 0x1

    return v0

    .line 413
    :cond_36
    const/4 v0, 0x0

    return v0
.end method

.method public isCoverClosed()Z
    .registers 2

    .line 383
    sget-object v0, Lcom/android/server/wm/CoverPolicyController;->sCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_9

    .line 384
    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 386
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public isCoverSupportedAndClosed()Z
    .registers 2

    .line 364
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicyController;->isViewCoverAttached()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 365
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicyController;->isCoverClosed()Z

    move-result v0

    return v0

    .line 367
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isFlipTypeCoverClosed()Z
    .registers 3

    .line 390
    iget-boolean v0, p0, Lcom/android/server/wm/CoverPolicyController;->mCoverSupported:Z

    if-eqz v0, :cond_3c

    .line 391
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicyController;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/android/server/wm/CoverPolicyController;->sCoverState:Lcom/samsung/android/cover/CoverState;

    .line 392
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2f

    sget-object v0, Lcom/android/server/wm/CoverPolicyController;->sCoverState:Lcom/samsung/android/cover/CoverState;

    .line 393
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/android/server/wm/CoverPolicyController;->sCoverState:Lcom/samsung/android/cover/CoverState;

    .line 394
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2f

    sget-object v0, Lcom/android/server/wm/CoverPolicyController;->sCoverState:Lcom/samsung/android/cover/CoverState;

    .line 395
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_3c

    .line 396
    :cond_2f
    sget-boolean v0, Lcom/android/server/wm/CoverPolicyController;->DEBUG:Z

    if-eqz v0, :cond_3a

    const-string v0, "CoverPolicyController"

    const-string v1, "flip type cover closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_3a
    const/4 v0, 0x1

    return v0

    .line 400
    :cond_3c
    const/4 v0, 0x0

    return v0
.end method

.method isLastCoverAppOpened()Z
    .registers 2

    .line 447
    iget-boolean v0, p0, Lcom/android/server/wm/CoverPolicyController;->mLastCoverAppCovered:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSViewCoverDialog(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 218
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x833

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isViewCoverAttached()Z
    .registers 3

    .line 344
    iget-boolean v0, p0, Lcom/android/server/wm/CoverPolicyController;->mCoverSupported:Z

    if-eqz v0, :cond_30

    sget-object v0, Lcom/android/server/wm/CoverPolicyController;->sCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_30

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_2e

    sget-object v0, Lcom/android/server/wm/CoverPolicyController;->sCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2e

    sget-object v0, Lcom/android/server/wm/CoverPolicyController;->sCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_2e

    sget-object v0, Lcom/android/server/wm/CoverPolicyController;->sCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2e

    sget-object v0, Lcom/android/server/wm/CoverPolicyController;->sCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_30

    :cond_2e
    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    return v0
.end method

.method public synthetic lambda$updateOrientationListener$0$CoverPolicyController()V
    .registers 2

    .line 460
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicyController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_f

    .line 461
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicyController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 463
    :cond_f
    return-void
.end method

.method public sendPowerKeyToCover()V
    .registers 4

    .line 417
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicyController;->isFlipTypeCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 419
    :try_start_6
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicyController;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/android/server/wm/CoverPolicyController;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/CoverPolicyController;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    .line 420
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicyController;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/CoverPolicyController;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    invoke-interface {v0}, Lcom/samsung/android/cover/ICoverManager;->sendPowerKeyToCover()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_1a

    .line 423
    :cond_19
    goto :goto_22

    .line 421
    :catch_1a
    move-exception v0

    .line 422
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CoverPolicyController"

    const-string v2, "CoverManager threw RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 425
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_22
    :goto_22
    return-void
.end method

.method setCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V
    .registers 4
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .line 428
    iget-boolean v0, p0, Lcom/android/server/wm/CoverPolicyController;->mCoverSupported:Z

    if-eqz v0, :cond_2c

    .line 429
    if-eqz p1, :cond_18

    .line 430
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    sget-object v1, Lcom/android/server/wm/CoverPolicyController;->sCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eq v0, v1, :cond_18

    .line 432
    :cond_13
    sget-object v0, Lcom/android/server/wm/CoverPolicyController;->sCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/CoverState;->copyFrom(Lcom/samsung/android/cover/CoverState;)V

    .line 436
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicyController;->isViewCoverAttached()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 437
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicyController;->isCoverClosed()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 438
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicyController;->mHideSViewCoverWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2c

    .line 439
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->disableHideSViewCoverOnce(Z)V

    .line 444
    :cond_2c
    return-void
.end method

.method public shouldBeHiddenByViewCover(Lcom/android/server/wm/WindowState;)Z
    .registers 9
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CoverPolicyController;->isSViewCoverDialog(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    .line 224
    .local v0, "isSViewCoverDialog":Z
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicyController;->isCoverSupportedAndClosed()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 225
    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    .line 227
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    const/4 v3, 0x1

    if-eqz v2, :cond_1c

    move v2, v3

    goto :goto_1d

    :cond_1c
    move v2, v1

    .line 228
    .local v2, "turnScreenOn":Z
    :goto_1d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v4

    .line 229
    .local v4, "showWhenLocked":Z
    invoke-direct {p0, p1}, Lcom/android/server/wm/CoverPolicyController;->belowNotificationShade(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    .line 231
    .local v5, "belowNotificationShade":Z
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isSurfaceShowingLw()Z

    move-result v6

    .line 233
    .local v6, "isSurfaceShowing":Z
    if-eqz v2, :cond_31

    if-nez v4, :cond_2f

    if-nez v5, :cond_31

    :cond_2f
    if-eqz v6, :cond_32

    :cond_31
    move v1, v3

    :cond_32
    return v1

    .line 235
    .end local v2    # "turnScreenOn":Z
    .end local v4    # "showWhenLocked":Z
    .end local v5    # "belowNotificationShade":Z
    .end local v6    # "isSurfaceShowing":Z
    :cond_33
    return v0
.end method

.method shouldHideStatusBarForCover()Z
    .registers 3

    .line 371
    iget-boolean v0, p0, Lcom/android/server/wm/CoverPolicyController;->mCoverSupported:Z

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/server/wm/CoverPolicyController;->sCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_19

    .line 372
    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    const/16 v1, 0xf

    if-eq v0, v1, :cond_17

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    goto :goto_19

    .line 376
    :cond_17
    const/4 v0, 0x1

    return v0

    .line 379
    :cond_19
    :goto_19
    const/4 v0, 0x0

    return v0
.end method
