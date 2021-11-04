.class Lcom/android/server/accessibility/AccessibilityManagerService$1;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 513
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 516
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 524
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplay:Landroid/hardware/display/DisplayManager;
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$400()Landroid/hardware/display/DisplayManager;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 525
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplay:Landroid/hardware/display/DisplayManager;
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$400()Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 526
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_17

    .line 527
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayState:I
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$502(I)I

    .line 530
    .end local v0    # "display":Landroid/view/Display;
    :cond_17
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 520
    return-void
.end method
