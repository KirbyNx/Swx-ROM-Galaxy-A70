.class Landroid/net/NetworkStackClient$NetworkStackConnection;
.super Ljava/lang/Object;
.source "NetworkStackClient.java"

# interfaces
.implements Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStackClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStackConnection"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/NetworkStackClient;


# direct methods
.method private constructor <init>(Landroid/net/NetworkStackClient;)V
    .registers 2

    .line 189
    iput-object p1, p0, Landroid/net/NetworkStackClient$NetworkStackConnection;->this$0:Landroid/net/NetworkStackClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/NetworkStackClient;Landroid/net/NetworkStackClient$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/net/NetworkStackClient;
    .param p2, "x1"    # Landroid/net/NetworkStackClient$1;

    .line 189
    invoke-direct {p0, p1}, Landroid/net/NetworkStackClient$NetworkStackConnection;-><init>(Landroid/net/NetworkStackClient;)V

    return-void
.end method


# virtual methods
.method public onModuleServiceConnected(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "service"    # Landroid/os/IBinder;

    .line 193
    iget-object v0, p0, Landroid/net/NetworkStackClient$NetworkStackConnection;->this$0:Landroid/net/NetworkStackClient;

    const-string v1, "Network stack service connected"

    # invokes: Landroid/net/NetworkStackClient;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/NetworkStackClient;->access$100(Landroid/net/NetworkStackClient;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Landroid/net/NetworkStackClient$NetworkStackConnection;->this$0:Landroid/net/NetworkStackClient;

    # invokes: Landroid/net/NetworkStackClient;->registerNetworkStackService(Landroid/os/IBinder;)V
    invoke-static {v0, p1}, Landroid/net/NetworkStackClient;->access$200(Landroid/net/NetworkStackClient;Landroid/os/IBinder;)V

    .line 195
    return-void
.end method
