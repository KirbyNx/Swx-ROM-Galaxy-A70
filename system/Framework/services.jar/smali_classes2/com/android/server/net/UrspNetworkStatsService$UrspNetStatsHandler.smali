.class Lcom/android/server/net/UrspNetworkStatsService$UrspNetStatsHandler;
.super Landroid/os/Handler;
.source "UrspNetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/UrspNetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UrspNetStatsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/UrspNetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/UrspNetworkStatsService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 63
    iput-object p1, p0, Lcom/android/server/net/UrspNetworkStatsService$UrspNetStatsHandler;->this$0:Lcom/android/server/net/UrspNetworkStatsService;

    .line 64
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 65
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkStatsService;->log(Ljava/lang/String;)V

    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    .line 72
    const-string v0, "default case"

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkStatsService;->log(Ljava/lang/String;)V

    .line 76
    return-void
.end method
