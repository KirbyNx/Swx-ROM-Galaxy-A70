.class Lcom/android/server/display/WifiDisplayAdapter$17;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->sendPresentationDisplayInfo(ZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field final synthetic val$displayId:I

.field final synthetic val$isStart:Z

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;IZLjava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .line 961
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$17;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput p2, p0, Lcom/android/server/display/WifiDisplayAdapter$17;->val$displayId:I

    iput-boolean p3, p0, Lcom/android/server/display/WifiDisplayAdapter$17;->val$isStart:Z

    iput-object p4, p0, Lcom/android/server/display/WifiDisplayAdapter$17;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 964
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$17;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$17;->val$displayId:I

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayAdapter$17;->val$isStart:Z

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$17;->val$packageName:Ljava/lang/String;

    const/16 v4, 0x15

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 965
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$17;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 966
    return-void
.end method
