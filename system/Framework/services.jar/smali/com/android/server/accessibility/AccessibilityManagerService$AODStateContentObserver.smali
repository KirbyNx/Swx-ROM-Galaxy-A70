.class Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;
.super Landroid/database/ContentObserver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AODStateContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 2

    .line 5720
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 5721
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5722
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 10
    .param p1, "selfChange"    # Z

    .line 5726
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 5727
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    .line 5728
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v3, "accessibility_display_inversion_enabled"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_21

    move v1, v2

    goto :goto_22

    :cond_21
    move v1, v4

    .line 5730
    .local v1, "invertColors":Z
    :goto_22
    if-eqz v1, :cond_4f

    .line 5731
    const-class v3, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/color/DisplayTransformManager;

    .line 5732
    .local v3, "dtm":Lcom/android/server/display/color/DisplayTransformManager;
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget v6, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v7, "aod_show_state"

    invoke-static {v5, v7, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_41

    move v4, v2

    :cond_41
    move v2, v4

    .line 5734
    .local v2, "aodShowStateEnabled":Z
    const/16 v4, 0x12c

    .line 5735
    if-nez v2, :cond_4b

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->MATRIX_INVERT_COLOR:[F
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5500()[F

    move-result-object v5

    goto :goto_4c

    :cond_4b
    const/4 v5, 0x0

    .line 5734
    :goto_4c
    invoke-virtual {v3, v4, v5}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 5737
    .end local v2    # "aodShowStateEnabled":Z
    .end local v3    # "dtm":Lcom/android/server/display/color/DisplayTransformManager;
    :cond_4f
    return-void
.end method
