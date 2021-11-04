.class Lcom/android/server/wm/ImeInsetsSourceProvider;
.super Lcom/android/server/wm/InsetsSourceProvider;
.source "ImeInsetsSourceProvider.java"


# instance fields
.field private mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

.field private mIsImeLayoutDrawn:Z

.field private mShowImeRunner:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .registers 4
    .param p1, "source"    # Landroid/view/InsetsSource;
    .param p2, "stateController"    # Lcom/android/server/wm/InsetsStateController;
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/InsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    .line 46
    return-void
.end method


# virtual methods
.method abortShowImePostLayout()V
    .registers 6

    .line 130
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_IME_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/server/wm/ProtoLogGroup;

    const v3, 0x51d654b9

    move-object v4, v2

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v1, v2, v4}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 131
    :cond_11
    iput-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    .line 132
    iput-boolean v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mIsImeLayoutDrawn:Z

    .line 133
    iput-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mShowImeRunner:Ljava/lang/Runnable;

    .line 134
    return-void
.end method

.method checkShowImePostLayout()V
    .registers 2

    .line 108
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mIsImeLayoutDrawn:Z

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_3c

    .line 111
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    .line 112
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 114
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeTargetFromDisplayContentAndImeSame()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    .line 116
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-nez v0, :cond_3c

    .line 118
    :cond_32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mIsImeLayoutDrawn:Z

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mShowImeRunner:Ljava/lang/Runnable;

    if-eqz v0, :cond_3c

    .line 121
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 124
    :cond_3c
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 171
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/InsetsSourceProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_18

    .line 173
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    const-string/jumbo v0, "showImePostLayout pending for mImeTargetFromIme="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 176
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 178
    :cond_18
    return-void
.end method

.method isImeTargetFromDisplayContentAndImeSame()Z
    .registers 11

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 148
    .local v0, "dcTarget":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 149
    .local v1, "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    const/4 v2, 0x0

    if-eqz v0, :cond_a1

    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    if-nez v3, :cond_11

    goto/16 :goto_a1

    .line 152
    :cond_11
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_IME_enabled:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_47

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v5}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-nez v5, :cond_29

    iget-object v5, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    goto :goto_33

    :cond_29
    iget-object v5, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v5}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v5

    :goto_33
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam1":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/server/wm/ProtoLogGroup;

    const v7, 0x25ae1e4d

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v2

    aput-object v5, v9, v4

    invoke-static {v6, v7, v2, v8, v9}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 155
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v5    # "protoLogParam1":Ljava/lang/String;
    :cond_47
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isClosing()Z

    move-result v3

    if-nez v3, :cond_51

    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    if-eq v3, v0, :cond_9f

    :cond_51
    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v3, :cond_6f

    .line 156
    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_6f

    .line 157
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    if-ne v3, v5, :cond_6f

    iget v3, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    iget-object v5, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    .line 158
    invoke-interface {v5}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-gt v3, v5, :cond_9f

    :cond_6f
    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    iget-object v5, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 159
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getImeFallback()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v5

    if-eq v3, v5, :cond_9f

    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    if-ne v1, v3, :cond_8f

    .line 161
    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_9f

    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    .line 162
    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isClosing()Z

    move-result v3

    if-eqz v3, :cond_9f

    :cond_8f
    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    .line 164
    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_a0

    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    iget-object v5, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mInputMethodInputTarget:Lcom/android/server/wm/WindowState;

    if-ne v3, v5, :cond_a0

    :cond_9f
    move v2, v4

    .line 155
    :cond_a0
    return v2

    .line 150
    :cond_a1
    :goto_a1
    return v2
.end method

.method public synthetic lambda$scheduleShowImePostLayout$0$ImeInsetsSourceProvider()V
    .registers 10

    .line 74
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_IME_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/server/wm/ProtoLogGroup;

    const v3, 0x72efe808

    move-object v4, v1

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v2, v1, v4}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeTargetFromDisplayContentAndImeSame()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 77
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 80
    .local v0, "target":Lcom/android/server/wm/InsetsControlTarget;
    if-nez v0, :cond_59

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDisplayContent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mDisplayContent.mInputMethodTarget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mDisplayContent.mInputMethodInputTarget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mInputMethodInputTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mImeTargetFromIme="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b3

    .line 90
    :cond_59
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_IME_enabled:Z

    const-string v4, ""

    const/4 v5, 0x1

    if-eqz v3, :cond_80

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_6f

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_70

    :cond_6f
    move-object v3, v4

    :goto_70
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/server/wm/ProtoLogGroup;

    const v7, 0x22eb33ec

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v3, v8, v2

    invoke-static {v6, v7, v2, v1, v8}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_80
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    invoke-interface {v0, v3, v5}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    .line 93
    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    if-eq v0, v3, :cond_b3

    if-eqz v3, :cond_b3

    .line 94
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_IME_enabled:Z

    if-eqz v3, :cond_b3

    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_a3

    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_a3
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/server/wm/ProtoLogGroup;

    const v6, -0x5ca81f2e

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    invoke-static {v4, v6, v2, v1, v5}, Lcom/android/server/protolog/ProtoLogImpl;->w(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 101
    .end local v0    # "target":Lcom/android/server/wm/InsetsControlTarget;
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_b3
    :goto_b3
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->abortShowImePostLayout()V

    .line 102
    return-void
.end method

.method scheduleShowImePostLayout(Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 9
    .param p1, "imeTarget"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 55
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_2e

    if-eqz v0, :cond_2e

    if-eqz p1, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mShowImeRunner:Ljava/lang/Runnable;

    if-eqz v0, :cond_2e

    .line 57
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    .line 58
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 59
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, v3, :cond_2e

    move v0, v1

    goto :goto_2f

    :cond_2e
    move v0, v2

    .line 60
    .local v0, "targetChanged":Z
    :goto_2f
    iput-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    .line 61
    const/4 v3, 0x0

    if-eqz v0, :cond_47

    .line 63
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_IME_enabled:Z

    if-eqz v1, :cond_43

    sget-object v1, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/server/wm/ProtoLogGroup;

    const v4, 0x85d1a3e

    move-object v5, v3

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v2, v3, v5}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->checkShowImePostLayout()V

    .line 68
    return-void

    .line 71
    :cond_47
    sget-boolean v4, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_IME_enabled:Z

    if-eqz v4, :cond_70

    iget-object v4, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-nez v4, :cond_56

    iget-object v4, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    goto :goto_60

    :cond_56
    iget-object v4, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_60
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/server/wm/ProtoLogGroup;

    const v6, -0x540edc89

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-static {v5, v6, v2, v3, v1}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    :cond_70
    new-instance v1, Lcom/android/server/wm/-$$Lambda$ImeInsetsSourceProvider$1aCwANZDoNIzXR0mfeN2iV_k2Yo;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$ImeInsetsSourceProvider$1aCwANZDoNIzXR0mfeN2iV_k2Yo;-><init>(Lcom/android/server/wm/ImeInsetsSourceProvider;)V

    iput-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mShowImeRunner:Ljava/lang/Runnable;

    .line 103
    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 104
    return-void
.end method
