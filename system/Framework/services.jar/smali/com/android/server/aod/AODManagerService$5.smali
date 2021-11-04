.class Lcom/android/server/aod/AODManagerService$5;
.super Ljava/lang/Object;
.source "AODManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/aod/AODManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/aod/AODManagerService;

    .line 270
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$5;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 273
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 281
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$5;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$1200(Lcom/android/server/aod/AODManagerService;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 282
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$5;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$1200(Lcom/android/server/aod/AODManagerService;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 283
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_1f

    if-nez p1, :cond_1f

    .line 285
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$5;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v2

    # invokes: Lcom/android/server/aod/AODManagerService;->updateDefaultDisplayState(I)V
    invoke-static {v1, v2}, Lcom/android/server/aod/AODManagerService;->access$1300(Lcom/android/server/aod/AODManagerService;I)V

    .line 288
    .end local v0    # "display":Landroid/view/Display;
    :cond_1f
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 277
    return-void
.end method
