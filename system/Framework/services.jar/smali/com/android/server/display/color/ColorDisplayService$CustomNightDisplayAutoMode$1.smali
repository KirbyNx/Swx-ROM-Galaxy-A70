.class Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode$1;
.super Landroid/content/BroadcastReceiver;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;

.field final synthetic val$this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;Lcom/android/server/display/color/ColorDisplayService;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;

    .line 980
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode$1;->this$1:Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;

    iput-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode$1;->val$this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 983
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode$1;->this$1:Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;

    # invokes: Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->updateActivated()V
    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->access$2100(Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;)V

    .line 984
    return-void
.end method
