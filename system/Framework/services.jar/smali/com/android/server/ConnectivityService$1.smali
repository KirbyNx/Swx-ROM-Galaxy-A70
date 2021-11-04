.class Lcom/android/server/ConnectivityService$1;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/net/TetheringManager$TetheringEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;

    .line 943
    iput-object p1, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffloadStatusChanged(I)V
    .registers 4
    .param p1, "status"    # I

    .line 946
    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    .line 947
    iget-object v0, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/ConnectivityService;->setDVFS(Z)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$000(Lcom/android/server/ConnectivityService;Z)V

    goto :goto_10

    .line 949
    :cond_a
    iget-object v0, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/ConnectivityService;->setDVFS(Z)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$000(Lcom/android/server/ConnectivityService;Z)V

    .line 951
    :goto_10
    return-void
.end method
