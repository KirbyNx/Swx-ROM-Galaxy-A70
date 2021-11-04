.class public Lcom/android/server/sepunion/OneHandService;
.super Lcom/samsung/android/sepunion/IOneHandService$Stub;
.source "OneHandService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;
    }
.end annotation


# static fields
.field private static final SIDEGESTURE_SERVICE_ACTION:Ljava/lang/String; = "com.samsung.action.SIDEGESTUREPAD_SERVICE"

.field private static final SIDEGESTURE_SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.sidegesturepad.SGPService"

.field private static final SIDEGESTURE_SERVICE_PACKAGE:Ljava/lang/String; = "com.samsung.android.sidegesturepad"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mLastStartTime:J

.field mMonitor:Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const-class v0, Lcom/android/server/sepunion/OneHandService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/OneHandService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/sepunion/IOneHandService$Stub;-><init>()V

    .line 38
    new-instance v0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;-><init>(Lcom/android/server/sepunion/OneHandService;Lcom/android/server/sepunion/OneHandService$1;)V

    iput-object v0, p0, Lcom/android/server/sepunion/OneHandService;->mMonitor:Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

    .line 145
    new-instance v0, Lcom/android/server/sepunion/OneHandService$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/OneHandService$1;-><init>(Lcom/android/server/sepunion/OneHandService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/OneHandService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    iput-object p1, p0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/sepunion/OneHandService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/sepunion/OneHandService;

    .line 27
    invoke-direct {p0}, Lcom/android/server/sepunion/OneHandService;->startGestureService()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 27
    sget-object v0, Lcom/android/server/sepunion/OneHandService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/sepunion/OneHandService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/OneHandService;

    .line 27
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/sepunion/OneHandService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/sepunion/OneHandService;

    .line 27
    iget-wide v0, p0, Lcom/android/server/sepunion/OneHandService;->mLastStartTime:J

    return-wide v0
.end method

.method private declared-synchronized getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    monitor-enter p0

    .line 59
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1c

    .line 60
    const-string/jumbo v0, "statusbar"

    .line 61
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/OneHandService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 62
    if-nez v0, :cond_1c

    .line 63
    sget-object v0, Lcom/android/server/sepunion/OneHandService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local p0    # "this":Lcom/android/server/sepunion/OneHandService;
    :cond_1c
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v0

    .line 58
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isInstalled()Z
    .registers 4

    .line 156
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 158
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_6
    const-string v1, "com.samsung.android.sidegesturepad"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_c} :catch_e

    .line 161
    nop

    .line 162
    return v2

    .line 159
    :catch_e
    move-exception v1

    .line 160
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    return v2
.end method

.method private startGestureService()V
    .registers 5

    .line 166
    invoke-direct {p0}, Lcom/android/server/sepunion/OneHandService;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 167
    return-void

    .line 170
    :cond_7
    :try_start_7
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.sidegesturepad"

    const-string v2, "com.samsung.android.sidegesturepad.SGPService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.action.SIDEGESTUREPAD_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 172
    .local v1, "intent":Landroid/content/Intent;
    const v2, 0x1000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 173
    const-string/jumbo v2, "option"

    const-string/jumbo v3, "start"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v2, "extra"

    const-string/jumbo v3, "system"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    iget-object v2, p0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 176
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/sepunion/OneHandService;->mLastStartTime:J
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3d} :catch_3e

    .line 179
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_55

    .line 177
    :catch_3e
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/sepunion/OneHandService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception on startGestureService() e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_55
    sget-object v0, Lcom/android/server/sepunion/OneHandService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startGestureService()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method


# virtual methods
.method public clickTile(Ljava/lang/String;)V
    .registers 8
    .param p1, "componentName"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Lcom/android/server/sepunion/OneHandService;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 73
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    sget-object v1, Lcom/android/server/sepunion/OneHandService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clickTile() componentName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", svc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 77
    .local v1, "cn":Landroid/content/ComponentName;
    :try_start_26
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->clickTile(Landroid/content/ComponentName;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    .line 80
    goto :goto_41

    .line 78
    :catch_2a
    move-exception v2

    .line 79
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/sepunion/OneHandService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception on clickTile() e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 139
    const-string v0, "\n##### OneHandService  #####\n##### (dumpsys sepunion onehand) #####\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Service alive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/sepunion/OneHandService;->mMonitor:Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

    invoke-virtual {v1}, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->isAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBootPhase(I)V
    .registers 5
    .param p1, "phase"    # I

    .line 102
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_26

    invoke-direct {p0}, Lcom/android/server/sepunion/OneHandService;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 103
    sget-object v1, Lcom/android/server/sepunion/OneHandService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onBootPhase()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 108
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/sepunion/OneHandService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_26
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 130
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "opt"    # Landroid/os/Bundle;

    .line 94
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 98
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 90
    return-void
.end method

.method public onStartUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 114
    return-void
.end method

.method public onStopUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 118
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 122
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 126
    return-void
.end method

.method public registerListener(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/os/IBinder;

    .line 46
    sget-object v0, Lcom/android/server/sepunion/OneHandService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerListener() name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", cb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mMonitor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/OneHandService;->mMonitor:Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService;->mMonitor:Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

    invoke-virtual {v0, p2}, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->registerWatcher(Landroid/os/IBinder;)V

    .line 48
    return-void
.end method

.method public unRegisterListener(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/os/IBinder;

    .line 52
    sget-object v0, Lcom/android/server/sepunion/OneHandService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unRegisterListener() name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", cb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService;->mMonitor:Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

    invoke-virtual {v0, p2}, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->unregisterWatcher(Landroid/os/IBinder;)V

    .line 54
    return-void
.end method

.method public writeSetting(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 85
    sget-object v0, Lcom/android/server/sepunion/OneHandService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeSetting() type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method
