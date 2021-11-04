.class Lcom/android/server/accessibility/AccessibilityManagerService$ColorInversionStateContentObserver;
.super Landroid/database/ContentObserver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorInversionStateContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 2

    .line 5742
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ColorInversionStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 5743
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5744
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 11
    .param p1, "selfChange"    # Z

    .line 5748
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 5749
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ColorInversionStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    .line 5750
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    const-class v1, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/color/DisplayTransformManager;

    .line 5751
    .local v1, "dtm":Lcom/android/server/display/color/DisplayTransformManager;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ColorInversionStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string/jumbo v4, "user_setup_complete"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2a

    move v2, v3

    goto :goto_2b

    :cond_2a
    move v2, v5

    .line 5753
    .local v2, "setupcomplete":Z
    :goto_2b
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ColorInversionStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget v6, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v7, "accessibility_display_inversion_enabled"

    invoke-static {v4, v7, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_41

    move v4, v3

    goto :goto_42

    :cond_41
    move v4, v5

    .line 5756
    .local v4, "invertColors":Z
    :goto_42
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ColorInversionStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget v7, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v8, "aod_show_state"

    invoke-static {v6, v8, v5, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_57

    move v5, v3

    :cond_57
    move v3, v5

    .line 5758
    .local v3, "aodShowStateEnabled":Z
    if-eqz v3, :cond_5d

    if-eqz v4, :cond_5d

    .line 5759
    const/4 v4, 0x0

    .line 5762
    .end local v3    # "aodShowStateEnabled":Z
    :cond_5d
    if-nez v2, :cond_6c

    .line 5763
    const/16 v3, 0x12c

    .line 5764
    if-eqz v4, :cond_68

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->MATRIX_INVERT_COLOR:[F
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5500()[F

    move-result-object v5

    goto :goto_69

    :cond_68
    const/4 v5, 0x0

    .line 5763
    :goto_69
    invoke-virtual {v1, v3, v5}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 5766
    :cond_6c
    return-void
.end method
