.class Lcom/android/server/display/GoogleCastController$2;
.super Ljava/lang/Object;
.source "GoogleCastController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/GoogleCastController;->sendRemoteDisplayStateChangeEvent(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/GoogleCastController;

.field final synthetic val$event:I

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/server/display/GoogleCastController;II)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/display/GoogleCastController;

    .line 133
    iput-object p1, p0, Lcom/android/server/display/GoogleCastController$2;->this$0:Lcom/android/server/display/GoogleCastController;

    iput p2, p0, Lcom/android/server/display/GoogleCastController$2;->val$state:I

    iput p3, p0, Lcom/android/server/display/GoogleCastController$2;->val$event:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v0, "data":Landroid/os/Bundle;
    iget v1, p0, Lcom/android/server/display/GoogleCastController$2;->val$state:I

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    iget-object v1, p0, Lcom/android/server/display/GoogleCastController$2;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/GoogleCastController;->access$100(Lcom/android/server/display/GoogleCastController;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/GoogleCastController$2;->val$event:I

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 139
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendRemoteDisplayStateChangeEvent state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/GoogleCastController$2;->val$state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/GoogleCastController$2;->val$event:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GoogleCastController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v2, p0, Lcom/android/server/display/GoogleCastController$2;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/display/GoogleCastController;->access$100(Lcom/android/server/display/GoogleCastController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 142
    return-void
.end method
