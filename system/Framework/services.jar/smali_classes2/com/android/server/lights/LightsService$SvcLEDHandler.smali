.class final Lcom/android/server/lights/LightsService$SvcLEDHandler;
.super Landroid/os/Handler;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SvcLEDHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method public constructor <init>(Lcom/android/server/lights/LightsService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1192
    iput-object p1, p0, Lcom/android/server/lights/LightsService$SvcLEDHandler;->this$0:Lcom/android/server/lights/LightsService;

    .line 1193
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1194
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1198
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_c

    .line 1200
    :cond_6
    iget-object v0, p0, Lcom/android/server/lights/LightsService$SvcLEDHandler;->this$0:Lcom/android/server/lights/LightsService;

    # invokes: Lcom/android/server/lights/LightsService;->handleForcedSvcLEDTask()V
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$3800(Lcom/android/server/lights/LightsService;)V

    .line 1201
    nop

    .line 1205
    :goto_c
    return-void
.end method
