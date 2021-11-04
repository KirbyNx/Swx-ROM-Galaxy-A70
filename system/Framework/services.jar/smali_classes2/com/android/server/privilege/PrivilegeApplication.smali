.class Lcom/android/server/privilege/PrivilegeApplication;
.super Landroid/app/IProcessObserver$Stub;
.source "PrivilegeApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final VIRTUAL_DISPLAY:Ljava/lang/String; = "virtual_display"

.field private static mPrivilegeVirtualDisplay:Lcom/android/server/privilege/PrivilegeVirtualDisplay;


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private mApplications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const-class v0, Lcom/android/server/privilege/PrivilegeApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/privilege/PrivilegeApplication;->TAG:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/privilege/PrivilegeApplication;->mPrivilegeVirtualDisplay:Lcom/android/server/privilege/PrivilegeVirtualDisplay;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/privilege/PrivilegeApplication;->mApplications:Ljava/util/HashMap;

    .line 22
    iput-object p1, p0, Lcom/android/server/privilege/PrivilegeApplication;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/privilege/PrivilegeApplication;->mActivityManager:Landroid/app/IActivityManager;

    .line 24
    invoke-static {p1}, Lcom/android/server/privilege/PrivilegeApplication;->setPrivilegeVirtualDisplay(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method private static declared-synchronized getPrivilegeVirtualDisplay()Lcom/android/server/privilege/PrivilegeVirtualDisplay;
    .registers 2

    const-class v0, Lcom/android/server/privilege/PrivilegeApplication;

    monitor-enter v0

    .line 32
    :try_start_3
    sget-object v1, Lcom/android/server/privilege/PrivilegeApplication;->mPrivilegeVirtualDisplay:Lcom/android/server/privilege/PrivilegeVirtualDisplay;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 32
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized setPrivilegeVirtualDisplay(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/privilege/PrivilegeApplication;

    monitor-enter v0

    .line 28
    :try_start_3
    new-instance v1, Lcom/android/server/privilege/PrivilegeVirtualDisplay;

    invoke-direct {v1, p0}, Lcom/android/server/privilege/PrivilegeVirtualDisplay;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/privilege/PrivilegeApplication;->mPrivilegeVirtualDisplay:Lcom/android/server/privilege/PrivilegeVirtualDisplay;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 29
    monitor-exit v0

    return-void

    .line 27
    .end local p0    # "context":Landroid/content/Context;
    :catchall_c
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method containsKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/android/server/privilege/PrivilegeApplication;->mApplications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method generateKey(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "uid"    # I
    .param p2, "operation"    # Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 87
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "serviceTypes"    # I

    .line 91
    return-void
.end method

.method public onProcessDied(II)V
    .registers 9
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 95
    sget-object v0, Lcom/android/server/privilege/PrivilegeApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProcessDied("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "(.*)_%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "match":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/privilege/PrivilegeApplication;->mApplications:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 100
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 101
    sget-object v3, Lcom/android/server/privilege/PrivilegeApplication;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is removed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0, v2}, Lcom/android/server/privilege/PrivilegeApplication;->remove(Ljava/lang/String;)V

    .line 104
    .end local v2    # "key":Ljava/lang/String;
    :cond_69
    goto :goto_3e

    .line 105
    :cond_6a
    return-void
.end method

.method put(Ljava/lang/String;I)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 44
    iget-object v0, p0, Lcom/android/server/privilege/PrivilegeApplication;->mApplications:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 45
    invoke-static {}, Lcom/android/server/privilege/PrivilegeApplication;->getPrivilegeVirtualDisplay()Lcom/android/server/privilege/PrivilegeVirtualDisplay;

    move-result-object v0

    .line 46
    .local v0, "privilegeVirtualDisplay":Lcom/android/server/privilege/PrivilegeVirtualDisplay;
    if-nez v0, :cond_16

    .line 47
    sget-object v1, Lcom/android/server/privilege/PrivilegeApplication;->TAG:Ljava/lang/String;

    const-string v2, "failed to get privilegeVirtualDisplay"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void

    .line 50
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 52
    .local v1, "id":J
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/privilege/PrivilegeApplication;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v3, p0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 53
    const-string/jumbo v3, "virtual_display"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 54
    invoke-virtual {v0}, Lcom/android/server/privilege/PrivilegeVirtualDisplay;->request()V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2b} :catch_31
    .catchall {:try_start_1a .. :try_end_2b} :catchall_2c

    goto :goto_32

    .line 58
    :catchall_2c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    throw v3

    .line 56
    :catch_31
    move-exception v3

    .line 58
    :cond_32
    :goto_32
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    .end local v0    # "privilegeVirtualDisplay":Lcom/android/server/privilege/PrivilegeVirtualDisplay;
    .end local v1    # "id":J
    :cond_35
    iget-object v0, p0, Lcom/android/server/privilege/PrivilegeApplication;->mApplications:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method remove(Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/android/server/privilege/PrivilegeApplication;->mApplications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/android/server/privilege/PrivilegeApplication;->mApplications:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 67
    invoke-static {}, Lcom/android/server/privilege/PrivilegeApplication;->getPrivilegeVirtualDisplay()Lcom/android/server/privilege/PrivilegeVirtualDisplay;

    move-result-object v0

    .line 68
    .local v0, "privilegeVirtualDisplay":Lcom/android/server/privilege/PrivilegeVirtualDisplay;
    if-nez v0, :cond_1b

    .line 69
    sget-object v1, Lcom/android/server/privilege/PrivilegeApplication;->TAG:Ljava/lang/String;

    const-string v2, "failed to get privilegeVirtualDisplay"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void

    .line 72
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 74
    .local v1, "id":J
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/privilege/PrivilegeApplication;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v3, p0}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 75
    const-string/jumbo v3, "virtual_display"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 76
    invoke-virtual {v0}, Lcom/android/server/privilege/PrivilegeVirtualDisplay;->stop()V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_30} :catch_36
    .catchall {:try_start_1f .. :try_end_30} :catchall_31

    goto :goto_37

    .line 80
    :catchall_31
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    throw v3

    .line 78
    :catch_36
    move-exception v3

    .line 80
    :cond_37
    :goto_37
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    .end local v0    # "privilegeVirtualDisplay":Lcom/android/server/privilege/PrivilegeVirtualDisplay;
    .end local v1    # "id":J
    :cond_3a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/server/privilege/PrivilegeApplication;->mApplications:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
