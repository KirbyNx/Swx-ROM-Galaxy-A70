.class interface abstract Lcom/android/server/wm/InsetsControlTarget;
.super Ljava/lang/Object;
.source "InsetsControlTarget.java"


# direct methods
.method public static asWindowOrNull(Lcom/android/server/wm/InsetsControlTarget;)Lcom/android/server/wm/WindowState;
    .registers 2
    .param p0, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 75
    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method


# virtual methods
.method public canShowTransient()Z
    .registers 2

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getRequestedInsetsState()Landroid/view/InsetsState;
    .registers 2

    .line 45
    sget-object v0, Landroid/view/InsetsState;->EMPTY:Landroid/view/InsetsState;

    return-object v0
.end method

.method public getWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideInsets(IZ)V
    .registers 3
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 64
    return-void
.end method

.method public notifyInsetsControlChanged()V
    .registers 1

    .line 32
    return-void
.end method

.method public showInsets(IZ)V
    .registers 3
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 55
    return-void
.end method
