.class Lcom/android/server/VibratorService$3;
.super Landroid/content/BroadcastReceiver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/VibratorService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/VibratorService;

    .line 735
    iput-object p1, p0, Lcom/android/server/VibratorService$3;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 738
    iget-object v0, p0, Lcom/android/server/VibratorService$3;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->updateVibrators()V
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;)V

    .line 740
    iget-object v0, p0, Lcom/android/server/VibratorService$3;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->reloadContentObserver()V
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)V

    .line 742
    return-void
.end method
