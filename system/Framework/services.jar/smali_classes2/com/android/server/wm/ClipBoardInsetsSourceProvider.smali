.class Lcom/android/server/wm/ClipBoardInsetsSourceProvider;
.super Lcom/android/server/wm/InsetsSourceProvider;
.source "ClipBoardInsetsSourceProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipBoardInsetsSourceProvider"


# instance fields
.field private mShowClipBoardRunner:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .registers 4
    .param p1, "source"    # Landroid/view/InsetsSource;
    .param p2, "stateController"    # Lcom/android/server/wm/InsetsStateController;
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/InsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    .line 36
    return-void
.end method


# virtual methods
.method abortShowClipBoardPostLayout()V
    .registers 3

    .line 66
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_b

    .line 67
    const-string v0, "ClipBoardInsetsSourceProvider"

    const-string v1, "abortShowClipBoardPostLayout"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ClipBoardInsetsSourceProvider;->mShowClipBoardRunner:Ljava/lang/Runnable;

    .line 70
    return-void
.end method

.method checkShowClipBoardPostLayout()V
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/android/server/wm/ClipBoardInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/ClipBoardInsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/ClipBoardInsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    .line 56
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/ClipBoardInsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-nez v0, :cond_1f

    .line 59
    iget-object v0, p0, Lcom/android/server/wm/ClipBoardInsetsSourceProvider;->mShowClipBoardRunner:Ljava/lang/Runnable;

    if-eqz v0, :cond_1f

    .line 60
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 63
    :cond_1f
    return-void
.end method

.method public synthetic lambda$scheduleShowClipBoardPostLayout$0$ClipBoardInsetsSourceProvider()V
    .registers 4

    .line 40
    iget-object v0, p0, Lcom/android/server/wm/ClipBoardInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_39

    .line 41
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_2d

    .line 42
    const-string v0, "ClipBoardInsetsSourceProvider"

    const-string v1, "Run showClipboardRunner"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call showInsets(clipboard) on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ClipBoardInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mInputMethodControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 44
    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_2d
    iget-object v0, p0, Lcom/android/server/wm/ClipBoardInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 47
    invoke-static {}, Landroid/view/WindowInsets$Type;->clipboard()I

    move-result v1

    const/4 v2, 0x1

    .line 46
    invoke-interface {v0, v1, v2}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    .line 49
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/wm/ClipBoardInsetsSourceProvider;->abortShowClipBoardPostLayout()V

    .line 50
    return-void
.end method

.method scheduleShowClipBoardPostLayout()V
    .registers 2

    .line 39
    new-instance v0, Lcom/android/server/wm/-$$Lambda$ClipBoardInsetsSourceProvider$7YSSq86K6amFSwhnzsGzORk3jLE;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$ClipBoardInsetsSourceProvider$7YSSq86K6amFSwhnzsGzORk3jLE;-><init>(Lcom/android/server/wm/ClipBoardInsetsSourceProvider;)V

    iput-object v0, p0, Lcom/android/server/wm/ClipBoardInsetsSourceProvider;->mShowClipBoardRunner:Ljava/lang/Runnable;

    .line 51
    return-void
.end method
