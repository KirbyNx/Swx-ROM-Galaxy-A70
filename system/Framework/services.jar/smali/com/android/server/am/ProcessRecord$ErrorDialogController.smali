.class Lcom/android/server/am/ProcessRecord$ErrorDialogController;
.super Ljava/lang/Object;
.source "ProcessRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ErrorDialogController"
.end annotation


# instance fields
.field private mAnrDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/AppNotRespondingDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mCrashDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/AppErrorDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mViolationDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/StrictModeViolationDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

.field final synthetic this$0:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ProcessRecord;

    .line 2135
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/ProcessRecord$ErrorDialogController;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ProcessRecord$ErrorDialogController;

    .line 2135
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/ProcessRecord$ErrorDialogController;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ProcessRecord$ErrorDialogController;

    .line 2135
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    return-object v0
.end method

.method private getDisplayContexts(Z)Ljava/util/List;
    .registers 4
    .param p1, "lastUsedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .line 2297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2298
    .local v0, "displayContexts":Ljava/util/List;, "Ljava/util/List<Landroid/content/Context;>;"
    if-nez p1, :cond_10

    .line 2299
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    # getter for: Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;
    invoke-static {v1}, Lcom/android/server/am/ProcessRecord;->access$000(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowProcessController;->getDisplayContextsWithErrorDialogs(Ljava/util/List;)V

    .line 2302
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    if-eqz p1, :cond_3a

    .line 2303
    :cond_18
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    # getter for: Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    if-eqz v1, :cond_2f

    .line 2304
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    # getter for: Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayUiContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_37

    .line 2305
    :cond_2f
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    # getter for: Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiContext:Landroid/content/Context;

    .line 2303
    :goto_37
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2307
    :cond_3a
    return-object v0
.end method


# virtual methods
.method clearAllErrorDialogs()V
    .registers 1

    .line 2162
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->clearCrashDialogs()V

    .line 2163
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->clearAnrDialogs()V

    .line 2164
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->clearViolationDialogs()V

    .line 2165
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->clearWaitingDialog()V

    .line 2166
    return-void
.end method

.method clearAnrDialogs()V
    .registers 3

    .line 2183
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    if-nez v0, :cond_5

    .line 2184
    return-void

    .line 2186
    :cond_5
    sget-object v1, Lcom/android/server/am/-$$Lambda$wajKhQOjpilT0K4j-1sLOJKYftw;->INSTANCE:Lcom/android/server/am/-$$Lambda$wajKhQOjpilT0K4j-1sLOJKYftw;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->forAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 2187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    .line 2188
    return-void
.end method

.method clearCrashDialogs()V
    .registers 2

    .line 2169
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->clearCrashDialogs(Z)V

    .line 2170
    return-void
.end method

.method clearCrashDialogs(Z)V
    .registers 4
    .param p1, "needDismiss"    # Z

    .line 2173
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    if-nez v0, :cond_5

    .line 2174
    return-void

    .line 2176
    :cond_5
    if-eqz p1, :cond_c

    .line 2177
    sget-object v1, Lcom/android/server/am/-$$Lambda$wajKhQOjpilT0K4j-1sLOJKYftw;->INSTANCE:Lcom/android/server/am/-$$Lambda$wajKhQOjpilT0K4j-1sLOJKYftw;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->forAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 2179
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    .line 2180
    return-void
.end method

.method clearViolationDialogs()V
    .registers 3

    .line 2191
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    if-nez v0, :cond_5

    .line 2192
    return-void

    .line 2194
    :cond_5
    sget-object v1, Lcom/android/server/am/-$$Lambda$wajKhQOjpilT0K4j-1sLOJKYftw;->INSTANCE:Lcom/android/server/am/-$$Lambda$wajKhQOjpilT0K4j-1sLOJKYftw;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->forAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 2195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    .line 2196
    return-void
.end method

.method clearWaitingDialog()V
    .registers 2

    .line 2199
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    if-nez v0, :cond_5

    .line 2200
    return-void

    .line 2202
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/am/AppWaitingForDebuggerDialog;->dismiss()V

    .line 2203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 2204
    return-void
.end method

.method forAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/server/am/BaseErrorDialog;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/am/BaseErrorDialog;",
            ">;)V"
        }
    .end annotation

    .line 2207
    .local p1, "dialogs":Ljava/util/List;, "Ljava/util/List<+Lcom/android/server/am/BaseErrorDialog;>;"
    .local p2, "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/am/BaseErrorDialog;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_14

    .line 2208
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseErrorDialog;

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2207
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 2210
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method hasAnrDialogs()Z
    .registers 2

    .line 2150
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method hasCrashDialogs()Z
    .registers 2

    .line 2146
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method hasDebugWaitingDialog()Z
    .registers 2

    .line 2158
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method hasViolationDialogs()Z
    .registers 2

    .line 2154
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public synthetic lambda$showAnrDialogs$1$ProcessRecord$ErrorDialogController()V
    .registers 3

    .line 2243
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    # getter for: Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2244
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    .line 2245
    .local v1, "dialogs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/AppNotRespondingDialog;>;"
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2246
    if-eqz v1, :cond_17

    .line 2247
    sget-object v0, Lcom/android/server/am/-$$Lambda$1WA8m3qLmGLM_p471nun2GeoDvg;->INSTANCE:Lcom/android/server/am/-$$Lambda$1WA8m3qLmGLM_p471nun2GeoDvg;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->forAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 2249
    :cond_17
    return-void

    .line 2245
    .end local v1    # "dialogs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/AppNotRespondingDialog;>;"
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$showCrashDialogs$0$ProcessRecord$ErrorDialogController()V
    .registers 3

    .line 2225
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    # getter for: Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2226
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    .line 2227
    .local v1, "dialogs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/AppErrorDialog;>;"
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2228
    if-eqz v1, :cond_17

    .line 2229
    sget-object v0, Lcom/android/server/am/-$$Lambda$1WA8m3qLmGLM_p471nun2GeoDvg;->INSTANCE:Lcom/android/server/am/-$$Lambda$1WA8m3qLmGLM_p471nun2GeoDvg;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->forAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 2231
    :cond_17
    return-void

    .line 2227
    .end local v1    # "dialogs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/AppErrorDialog;>;"
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$showDebugWaitingDialogs$3$ProcessRecord$ErrorDialogController()V
    .registers 3

    .line 2278
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    # getter for: Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2279
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 2280
    .local v1, "dialog":Landroid/app/Dialog;
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2281
    if-eqz v1, :cond_15

    .line 2282
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 2284
    :cond_15
    return-void

    .line 2280
    .end local v1    # "dialog":Landroid/app/Dialog;
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$showViolationDialogs$2$ProcessRecord$ErrorDialogController()V
    .registers 3

    .line 2262
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    # getter for: Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2263
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    .line 2264
    .local v1, "dialogs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/StrictModeViolationDialog;>;"
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2265
    if-eqz v1, :cond_17

    .line 2266
    sget-object v0, Lcom/android/server/am/-$$Lambda$1WA8m3qLmGLM_p471nun2GeoDvg;->INSTANCE:Lcom/android/server/am/-$$Lambda$1WA8m3qLmGLM_p471nun2GeoDvg;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->forAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 2268
    :cond_17
    return-void

    .line 2264
    .end local v1    # "dialogs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/StrictModeViolationDialog;>;"
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method showAnrDialogs(Lcom/android/server/am/AppNotRespondingDialog$Data;)V
    .registers 8
    .param p1, "data"    # Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 2235
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isSilentAnr()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->getDisplayContexts(Z)Ljava/util/List;

    move-result-object v0

    .line 2236
    .local v0, "contexts":Ljava/util/List;, "Ljava/util/List<Landroid/content/Context;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    .line 2237
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_32

    .line 2238
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 2239
    .local v2, "c":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    new-instance v4, Lcom/android/server/am/AppNotRespondingDialog;

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    # getter for: Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v5}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    invoke-direct {v4, v5, v2, p1}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2237
    .end local v2    # "c":Landroid/content/Context;
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 2241
    .end local v1    # "i":I
    :cond_32
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    # getter for: Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$ProcessRecord$ErrorDialogController$pOUTBc6k6s3-ZuZYLsjopLU9JWw;

    invoke-direct {v2, p0}, Lcom/android/server/am/-$$Lambda$ProcessRecord$ErrorDialogController$pOUTBc6k6s3-ZuZYLsjopLU9JWw;-><init>(Lcom/android/server/am/ProcessRecord$ErrorDialogController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2250
    return-void
.end method

.method showCrashDialogs(Lcom/android/server/am/AppErrorDialog$Data;)V
    .registers 8
    .param p1, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    .line 2213
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->getDisplayContexts(Z)Ljava/util/List;

    move-result-object v0

    .line 2214
    .local v0, "contexts":Ljava/util/List;, "Ljava/util/List<Landroid/content/Context;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    .line 2215
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_12
    if-ltz v1, :cond_2f

    .line 2216
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 2218
    .local v2, "c":Landroid/content/Context;
    if-eqz v2, :cond_2c

    .line 2220
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    new-instance v4, Lcom/android/server/am/AppErrorDialog;

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    # getter for: Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v5}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    invoke-direct {v4, v2, v5, p1}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2215
    .end local v2    # "c":Landroid/content/Context;
    :cond_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 2223
    .end local v1    # "i":I
    :cond_2f
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    # getter for: Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$ProcessRecord$ErrorDialogController$W-AQD6Azm5daJOusD9r1R26WGBo;

    invoke-direct {v2, p0}, Lcom/android/server/am/-$$Lambda$ProcessRecord$ErrorDialogController$W-AQD6Azm5daJOusD9r1R26WGBo;-><init>(Lcom/android/server/am/ProcessRecord$ErrorDialogController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2232
    return-void
.end method

.method showDebugWaitingDialogs()V
    .registers 6

    .line 2272
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->getDisplayContexts(Z)Ljava/util/List;

    move-result-object v0

    .line 2273
    .local v0, "contexts":Ljava/util/List;, "Ljava/util/List<Landroid/content/Context;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 2274
    .local v1, "c":Landroid/content/Context;
    new-instance v2, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    # getter for: Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v2, v3, v1, v4}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    iput-object v2, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 2276
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    # getter for: Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/-$$Lambda$ProcessRecord$ErrorDialogController$Pxxn90rYyxqzAxLE-3U2iU5qX6M;

    invoke-direct {v3, p0}, Lcom/android/server/am/-$$Lambda$ProcessRecord$ErrorDialogController$Pxxn90rYyxqzAxLE-3U2iU5qX6M;-><init>(Lcom/android/server/am/ProcessRecord$ErrorDialogController;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2285
    return-void
.end method

.method showViolationDialogs(Lcom/android/server/am/AppErrorResult;)V
    .registers 9
    .param p1, "res"    # Lcom/android/server/am/AppErrorResult;

    .line 2253
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->getDisplayContexts(Z)Ljava/util/List;

    move-result-object v0

    .line 2254
    .local v0, "contexts":Ljava/util/List;, "Ljava/util/List<Landroid/content/Context;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    .line 2255
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_12
    if-ltz v1, :cond_2f

    .line 2256
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 2257
    .local v2, "c":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    new-instance v4, Lcom/android/server/am/StrictModeViolationDialog;

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    .line 2258
    # getter for: Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v5}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v4, v2, v5, p1, v6}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 2257
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2255
    .end local v2    # "c":Landroid/content/Context;
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 2260
    .end local v1    # "i":I
    :cond_2f
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    # getter for: Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$ProcessRecord$ErrorDialogController$yEOzfx-KIitetidLDudmF3WIN9Y;

    invoke-direct {v2, p0}, Lcom/android/server/am/-$$Lambda$ProcessRecord$ErrorDialogController$yEOzfx-KIitetidLDudmF3WIN9Y;-><init>(Lcom/android/server/am/ProcessRecord$ErrorDialogController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2269
    return-void
.end method
