.class Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;
.super Ljava/lang/Object;
.source "RemoteSystemCaptionsManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;
    .param p2, "x1"    # Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$1;

    .line 160
    invoke-direct {p0, p1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;-><init>(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 163
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    # getter for: Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$100(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 164
    :try_start_7
    iget-object v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    # getter for: Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z
    invoke-static {v1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$200(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 165
    # getter for: Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onServiceConnected()"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_19
    iget-object v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    # getter for: Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mDestroyed:Z
    invoke-static {v1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$400(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Z

    move-result v1

    if-nez v1, :cond_37

    iget-object v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    # getter for: Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z
    invoke-static {v1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$500(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Z

    move-result v1

    if-nez v1, :cond_2a

    goto :goto_37

    .line 171
    :cond_2a
    iget-object v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z
    invoke-static {v1, v2}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$502(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Z)Z

    .line 172
    iget-object v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    # setter for: Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mService:Landroid/os/IBinder;
    invoke-static {v1, p2}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$602(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 173
    monitor-exit v0

    .line 174
    return-void

    .line 168
    :cond_37
    :goto_37
    # getter for: Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onServiceConnected() dispatched after unbindService"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    monitor-exit v0

    return-void

    .line 173
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 178
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    # getter for: Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$100(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 179
    :try_start_7
    iget-object v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    # getter for: Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z
    invoke-static {v1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$200(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 180
    # getter for: Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onServiceDisconnected()"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_19
    iget-object v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z
    invoke-static {v1, v2}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$502(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Z)Z

    .line 183
    iget-object v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mService:Landroid/os/IBinder;
    invoke-static {v1, v2}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->access$602(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 184
    monitor-exit v0

    .line 185
    return-void

    .line 184
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw v1
.end method
