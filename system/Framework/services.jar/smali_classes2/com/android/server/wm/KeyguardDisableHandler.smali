.class Lcom/android/server/wm/KeyguardDisableHandler;
.super Ljava/lang/Object;
.source "KeyguardDisableHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/KeyguardDisableHandler$Injector;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

.field private final mCallback:Lcom/android/server/utils/UserTokenWatcher$Callback;

.field private mCurrentUser:I

.field private mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

.field private final mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/wm/KeyguardDisableHandler$Injector;Landroid/os/Handler;)V
    .registers 6
    .param p1, "injector"    # Lcom/android/server/wm/KeyguardDisableHandler$Injector;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    .line 126
    new-instance v0, Lcom/android/server/wm/KeyguardDisableHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/KeyguardDisableHandler$1;-><init>(Lcom/android/server/wm/KeyguardDisableHandler;)V

    iput-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCallback:Lcom/android/server/utils/UserTokenWatcher$Callback;

    .line 50
    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    .line 51
    new-instance v1, Lcom/android/server/utils/UserTokenWatcher;

    const-string v2, "WindowManager"

    invoke-direct {v1, v0, p2, v2}, Lcom/android/server/utils/UserTokenWatcher;-><init>(Lcom/android/server/utils/UserTokenWatcher$Callback;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    .line 52
    new-instance v0, Lcom/android/server/utils/UserTokenWatcher;

    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCallback:Lcom/android/server/utils/UserTokenWatcher$Callback;

    invoke-direct {v0, v1, p2, v2}, Lcom/android/server/utils/UserTokenWatcher;-><init>(Lcom/android/server/utils/UserTokenWatcher$Callback;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    .line 53
    return-void
.end method

.method static create(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;Landroid/os/Handler;)Lcom/android/server/wm/KeyguardDisableHandler;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 140
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    .line 141
    .local v0, "userManager":Landroid/os/UserManagerInternal;
    new-instance v1, Lcom/android/server/wm/KeyguardDisableHandler;

    new-instance v2, Lcom/android/server/wm/KeyguardDisableHandler$2;

    invoke-direct {v2, p1, v0}, Lcom/android/server/wm/KeyguardDisableHandler$2;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Landroid/os/UserManagerInternal;)V

    invoke-direct {v1, v2, p2}, Lcom/android/server/wm/KeyguardDisableHandler;-><init>(Lcom/android/server/wm/KeyguardDisableHandler$Injector;Landroid/os/Handler;)V

    return-object v1
.end method

.method private shouldKeyguardBeEnabled(I)Z
    .registers 9
    .param p1, "userId"    # I

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    iget v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    invoke-interface {v0, v1}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->dpmRequiresPassword(I)Z

    move-result v0

    .line 113
    .local v0, "dpmRequiresPassword":Z
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    iget v2, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    invoke-interface {v1, v2}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->isKeyguardSecure(I)Z

    move-result v1

    .line 115
    .local v1, "keyguardSecure":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_18

    if-nez v1, :cond_18

    move v4, v3

    goto :goto_19

    :cond_18
    move v4, v2

    .line 118
    .local v4, "allowedFromApps":Z
    :goto_19
    xor-int/lit8 v5, v0, 0x1

    .line 120
    .local v5, "allowedFromSystem":Z
    if-eqz v4, :cond_25

    iget-object v6, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    invoke-virtual {v6, p1}, Lcom/android/server/utils/UserTokenWatcher;->isAcquired(I)Z

    move-result v6

    if-nez v6, :cond_2f

    :cond_25
    if-eqz v5, :cond_31

    iget-object v6, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    .line 121
    invoke-virtual {v6, p1}, Lcom/android/server/utils/UserTokenWatcher;->isAcquired(I)Z

    move-result v6

    if-eqz v6, :cond_31

    :cond_2f
    move v6, v3

    goto :goto_32

    :cond_31
    move v6, v2

    .line 122
    .local v6, "shouldBeDisabled":Z
    :goto_32
    if-nez v6, :cond_35

    move v2, v3

    :cond_35
    return v2
.end method

.method private updateKeyguardEnabledLocked(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 69
    iget v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    if-eq v0, p1, :cond_7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_12

    .line 70
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    iget v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    invoke-direct {p0, v1}, Lcom/android/server/wm/KeyguardDisableHandler;->shouldKeyguardBeEnabled(I)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->enableKeyguard(Z)V

    .line 72
    :cond_12
    return-void
.end method

.method private watcherForCallingUid(Landroid/os/IBinder;I)Lcom/android/server/utils/UserTokenWatcher;
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I

    .line 98
    invoke-static {p2}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    return-object v0

    .line 100
    :cond_9
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_14

    instance-of v0, p1, Lcom/android/server/wm/LockTaskController$LockTaskToken;

    if-eqz v0, :cond_14

    .line 105
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    return-object v0

    .line 107
    :cond_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only apps can use the KeyguardLock API"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;II)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 75
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/KeyguardDisableHandler;->watcherForCallingUid(Landroid/os/IBinder;I)Lcom/android/server/utils/UserTokenWatcher;

    move-result-object v0

    .line 76
    .local v0, "watcherForCaller":Lcom/android/server/utils/UserTokenWatcher;
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    invoke-interface {v1, p4}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->getProfileParentId(I)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/utils/UserTokenWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 77
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 86
    const-string v0, "  KeyguardDisable Token Info:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    if-eqz v0, :cond_c

    .line 89
    invoke-virtual {v0, p1}, Lcom/android/server/utils/UserTokenWatcher;->dump(Ljava/io/PrintWriter;)V

    .line 91
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    if-eqz v0, :cond_13

    .line 92
    invoke-virtual {v0, p1}, Lcom/android/server/utils/UserTokenWatcher;->dump(Ljava/io/PrintWriter;)V

    .line 94
    :cond_13
    return-void
.end method

.method reenableKeyguard(Landroid/os/IBinder;II)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/KeyguardDisableHandler;->watcherForCallingUid(Landroid/os/IBinder;I)Lcom/android/server/utils/UserTokenWatcher;

    move-result-object v0

    .line 81
    .local v0, "watcherForCaller":Lcom/android/server/utils/UserTokenWatcher;
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    invoke-interface {v1, p3}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->getProfileParentId(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/utils/UserTokenWatcher;->release(Landroid/os/IBinder;I)V

    .line 82
    return-void
.end method

.method public setCurrentUser(I)V
    .registers 3
    .param p1, "user"    # I

    .line 56
    monitor-enter p0

    .line 57
    :try_start_1
    iput p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    .line 58
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/KeyguardDisableHandler;->updateKeyguardEnabledLocked(I)V

    .line 59
    monitor-exit p0

    .line 60
    return-void

    .line 59
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method updateKeyguardEnabled(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 63
    monitor-enter p0

    .line 64
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardDisableHandler;->updateKeyguardEnabledLocked(I)V

    .line 65
    monitor-exit p0

    .line 66
    return-void

    .line 65
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method
