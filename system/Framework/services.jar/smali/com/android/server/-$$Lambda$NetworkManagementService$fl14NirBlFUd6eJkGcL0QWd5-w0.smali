.class public final synthetic Lcom/android/server/-$$Lambda$NetworkManagementService$fl14NirBlFUd6eJkGcL0QWd5-w0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$fl14NirBlFUd6eJkGcL0QWd5-w0;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$fl14NirBlFUd6eJkGcL0QWd5-w0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$fl14NirBlFUd6eJkGcL0QWd5-w0;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$fl14NirBlFUd6eJkGcL0QWd5-w0;->f$1:Z

    invoke-static {v0, v1, p1}, Lcom/android/server/NetworkManagementService;->lambda$notifyInterfaceStatusChanged$0(Ljava/lang/String;ZLandroid/net/INetworkManagementEventObserver;)V

    return-void
.end method
