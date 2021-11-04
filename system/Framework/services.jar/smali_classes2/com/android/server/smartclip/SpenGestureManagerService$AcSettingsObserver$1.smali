.class Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver$1;
.super Landroid/database/ContentObserver;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;->observe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1237
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver$1;->this$1:Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .param p1, "selfChange"    # Z

    .line 1240
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pen_digitizer_enabled"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1241
    .local v0, "currentMasterSwitch":I
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver$1;->this$1:Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;

    iget-object v1, v1, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    if-ne v0, v2, :cond_18

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->onSpenDigitizerOnOffChanged(Z)V
    invoke-static {v1, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$4000(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V

    .line 1242
    return-void
.end method
