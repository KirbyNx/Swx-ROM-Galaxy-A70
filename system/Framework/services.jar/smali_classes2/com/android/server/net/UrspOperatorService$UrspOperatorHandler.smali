.class Lcom/android/server/net/UrspOperatorService$UrspOperatorHandler;
.super Landroid/os/Handler;
.source "UrspOperatorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/UrspOperatorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UrspOperatorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/UrspOperatorService;


# direct methods
.method constructor <init>(Lcom/android/server/net/UrspOperatorService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 60
    iput-object p1, p0, Lcom/android/server/net/UrspOperatorService$UrspOperatorHandler;->this$0:Lcom/android/server/net/UrspOperatorService;

    .line 61
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 62
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspOperatorService;->log(Ljava/lang/String;)V

    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    .line 69
    const-string v0, "default case"

    invoke-static {v0}, Lcom/android/server/net/UrspOperatorService;->log(Ljava/lang/String;)V

    .line 73
    return-void
.end method
