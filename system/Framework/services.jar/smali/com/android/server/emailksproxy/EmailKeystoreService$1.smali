.class Lcom/android/server/emailksproxy/EmailKeystoreService$1;
.super Ljava/lang/Object;
.source "EmailKeystoreService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/emailksproxy/EmailKeystoreService;->bind(Landroid/content/Context;I)Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field volatile mConnectedAtLeastOnce:Z

.field final synthetic val$q:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/BlockingQueue;)V
    .registers 2

    .line 395
    iput-object p1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$q:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->mConnectedAtLeastOnce:Z

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 400
    iget-boolean v0, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->mConnectedAtLeastOnce:Z

    if-nez v0, :cond_1f

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->mConnectedAtLeastOnce:Z

    .line 403
    const-string v0, "EmailKeystoreService"

    const-string v1, "Bind to keychain service happened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    if-eqz p2, :cond_1f

    .line 407
    :try_start_10
    iget-object v0, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$q:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p2}, Landroid/security/IKeyChainService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeyChainService;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_19} :catch_1a

    goto :goto_1f

    .line 409
    :catch_1a
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    nop

    .line 415
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1f
    :goto_1f
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 419
    return-void
.end method
