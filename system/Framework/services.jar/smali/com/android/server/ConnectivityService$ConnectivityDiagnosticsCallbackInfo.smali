.class Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectivityDiagnosticsCallbackInfo"
.end annotation


# instance fields
.field private final mCallingPackageName:Ljava/lang/String;

.field private final mCb:Landroid/net/IConnectivityDiagnosticsCallback;

.field private final mRequestInfo:Lcom/android/server/ConnectivityService$NetworkRequestInfo;

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;Landroid/net/IConnectivityDiagnosticsCallback;Lcom/android/server/ConnectivityService$NetworkRequestInfo;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;
    .param p2, "cb"    # Landroid/net/IConnectivityDiagnosticsCallback;
    .param p3, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .param p4, "callingPackageName"    # Ljava/lang/String;

    .line 11863
    iput-object p1, p0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11864
    iput-object p2, p0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;->mCb:Landroid/net/IConnectivityDiagnosticsCallback;

    .line 11865
    iput-object p3, p0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;->mRequestInfo:Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 11866
    iput-object p4, p0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;->mCallingPackageName:Ljava/lang/String;

    .line 11867
    return-void
.end method

.method static synthetic access$10800(Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;)Landroid/net/IConnectivityDiagnosticsCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;

    .line 11854
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;->mCb:Landroid/net/IConnectivityDiagnosticsCallback;

    return-object v0
.end method

.method static synthetic access$10900(Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;

    .line 11854
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;->mRequestInfo:Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;

    .line 11854
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;->mCallingPackageName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 11871
    const-string v0, "ConnectivityDiagnosticsCallback IBinder died."

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$100(Ljava/lang/String;)V

    .line 11872
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;->mCb:Landroid/net/IConnectivityDiagnosticsCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->unregisterConnectivityDiagnosticsCallback(Landroid/net/IConnectivityDiagnosticsCallback;)V

    .line 11873
    return-void
.end method
