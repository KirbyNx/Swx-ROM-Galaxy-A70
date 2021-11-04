.class Lcom/android/server/display/GoogleCastController$3;
.super Ljava/lang/Object;
.source "GoogleCastController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/GoogleCastController;->sendWifiDisplayPlayStateChangedEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/GoogleCastController;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/server/display/GoogleCastController;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/display/GoogleCastController;

    .line 148
    iput-object p1, p0, Lcom/android/server/display/GoogleCastController$3;->this$0:Lcom/android/server/display/GoogleCastController;

    iput p2, p0, Lcom/android/server/display/GoogleCastController$3;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 151
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$3;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->access$100(Lcom/android/server/display/GoogleCastController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x18

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 153
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 154
    .local v1, "data":Landroid/os/Bundle;
    iget v2, p0, Lcom/android/server/display/GoogleCastController$3;->val$state:I

    const-string/jumbo v3, "state"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 156
    iget-object v2, p0, Lcom/android/server/display/GoogleCastController$3;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/display/GoogleCastController;->access$100(Lcom/android/server/display/GoogleCastController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    return-void
.end method
