.class final Lcom/android/server/wm/MultiTaskingController$H;
.super Landroid/os/Handler;
.source "MultiTaskingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiTaskingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MultiTaskingController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MultiTaskingController;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/MultiTaskingController;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1239
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$H;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 1240
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1241
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1245
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1249
    return-void
.end method
