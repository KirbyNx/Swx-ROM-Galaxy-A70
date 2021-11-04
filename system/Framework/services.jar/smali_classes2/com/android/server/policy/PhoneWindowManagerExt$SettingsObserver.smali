.class Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mSettingsUriToCallback:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/net/Uri;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/os/Handler;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1749
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1750
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1746
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->mSettingsUriToCallback:Ljava/util/LinkedHashMap;

    .line 1751
    return-void
.end method

.method private synthetic lambda$observe$45(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2170
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "ltw_smartview_connected"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    move v2, v3

    :cond_e
    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsLTWSmartViewConnected:Z

    .line 2172
    return-void
.end method

.method private synthetic lambda$observe$46(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2178
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "palm_touch_to_sleep"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    move v2, v3

    :cond_e
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPalmTouchDownToSleep:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$1202(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 2180
    return-void
.end method


# virtual methods
.method public synthetic lambda$observe$0$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 1762
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1764
    # invokes: Lcom/android/server/policy/PhoneWindowManagerExt;->getDeviceDefaultNavigationBarColor()I
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$4900(Lcom/android/server/policy/PhoneWindowManagerExt;)I

    move-result v1

    .line 1762
    const-string/jumbo v2, "navigationbar_current_color"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSettingsNavigationBarColor:I

    .line 1765
    return-void
.end method

.method public synthetic lambda$observe$1$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 1771
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "navigation_bar_button_to_hide_keyboard"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mNavBarImeBtnEnabled:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$4802(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 1773
    return-void
.end method

.method public synthetic lambda$observe$10$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 1891
    const-string/jumbo v0, "one_handed_op_wakeup_type"

    const/4 v1, 0x1

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1893
    .local v0, "triggeredType":I
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$200(Lcom/android/server/policy/PhoneWindowManagerExt;)Lcom/android/server/policy/OneHandOpPolicyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/policy/OneHandOpPolicyManager;->setOneHandOpTriggeredType(I)V

    .line 1895
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2d

    .line 1896
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSettings triggeredType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneWindowManagerExt"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    :cond_2d
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateMultiTapHandlerForOneHandOp(Z)V

    .line 1899
    return-void
.end method

.method public synthetic lambda$observe$11$PhoneWindowManagerExt$SettingsObserver(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "forced"    # Ljava/lang/Boolean;

    .line 1905
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTspStateManager:Lcom/android/server/policy/TspStateManager;

    invoke-virtual {v0}, Lcom/android/server/policy/TspStateManager;->updateTspCustomCommand()V

    .line 1906
    return-void
.end method

.method public synthetic lambda$observe$12$PhoneWindowManagerExt$SettingsObserver(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "forced"    # Ljava/lang/Boolean;

    .line 1910
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTspStateManager:Lcom/android/server/policy/TspStateManager;

    invoke-virtual {v0}, Lcom/android/server/policy/TspStateManager;->createDebugObjectIfNeeded()V

    .line 1911
    return-void
.end method

.method public synthetic lambda$observe$13$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 1916
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "navigation_bar_gesture_while_hidden"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    move v2, v3

    :cond_e
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mHasNavigationBarGesture:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$4202(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    return-void
.end method

.method public synthetic lambda$observe$14$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 1920
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "navigation_bar_gesture_detail_type"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    move v2, v3

    :cond_e
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mNavigationBarGestureDetailType:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$4102(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    return-void
.end method

.method public synthetic lambda$observe$15$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 1928
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string v1, "function_key_config_longpress_type"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyLongPressType:I

    .line 1930
    return-void
.end method

.method public synthetic lambda$observe$16$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 1937
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string v1, "function_key_config_doublepress"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_c

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSideKeyDoubleTapEnabled:Z

    .line 1940
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSideKeyDoubleTapSettings()V

    .line 1941
    return-void
.end method

.method public synthetic lambda$observe$17$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 1946
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string v1, "function_key_config_doublepress_type"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyDoubleTapType:I
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$4002(Lcom/android/server/policy/PhoneWindowManagerExt;I)I

    .line 1949
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSideKeyDoubleTapSettings()V

    .line 1950
    return-void
.end method

.method public synthetic lambda$observe$18$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 1955
    const-string v0, "function_key_config_doublepress_value"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1958
    .local v0, "sideKeyDoubleTapAppInfo":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # invokes: Lcom/android/server/policy/PhoneWindowManagerExt;->updateSideKeyDoubleTapAppInfo(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$3900(Lcom/android/server/policy/PhoneWindowManagerExt;Ljava/lang/String;)V

    .line 1959
    return-void
.end method

.method public synthetic lambda$observe$19$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 1963
    const-string v0, "Flashlight_brightness_level"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1965
    .local v0, "flashlightValue":I
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # invokes: Lcom/android/server/policy/PhoneWindowManagerExt;->convertToFlashlightLevel(I)I
    invoke-static {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$3800(Lcom/android/server/policy/PhoneWindowManagerExt;I)I

    move-result v2

    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mFlashlightLevel:I
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$3702(Lcom/android/server/policy/PhoneWindowManagerExt;I)I

    .line 1966
    return-void
.end method

.method public synthetic lambda$observe$2$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 1779
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "reduce_animations"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mReducedAnimEnabled:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$4702(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 1781
    return-void
.end method

.method public synthetic lambda$observe$20$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 1971
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "setupwizard_bixby_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mIsBixbySetupWizardMode:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$3602(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    return-void
.end method

.method public synthetic lambda$observe$21$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 1978
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "volumekey_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeUpKeyMode:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$3502(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 1980
    return-void
.end method

.method public synthetic lambda$observe$22$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 1986
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string v1, "anykey_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    move v2, v3

    :cond_e
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAnyKeyMode:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$3402(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 1988
    return-void
.end method

.method public synthetic lambda$observe$23$PhoneWindowManagerExt$SettingsObserver()V
    .registers 3

    .line 1997
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1998
    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mEmergencyModeEnabled:Z
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$3300(Lcom/android/server/policy/PhoneWindowManagerExt;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onEmergencyModeChanged(Z)V

    .line 1997
    return-void
.end method

.method public synthetic lambda$observe$24$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 1994
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string v1, "emergency_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    move v2, v3

    :cond_e
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mEmergencyModeEnabled:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$3302(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 1997
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$IJ10UlWZuipFQzlxJA04jU5D0qw;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$IJ10UlWZuipFQzlxJA04jU5D0qw;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2000
    return-void
.end method

.method public synthetic lambda$observe$25$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2006
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string v1, "chile_cmas_popup_on_top"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_d

    move v2, v3

    :cond_d
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mIsChileCmasDialogShowing:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$3202(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 2008
    return-void
.end method

.method public synthetic lambda$observe$26$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2014
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "haptic_feedback_enabled"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsEnabled:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$3102(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 2016
    return-void
.end method

.method public synthetic lambda$observe$27$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2020
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string v1, "default_assist_vibration_feedback"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    move v2, v3

    :cond_e
    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAssistHapticEnabled:Z

    .line 2022
    return-void
.end method

.method public synthetic lambda$observe$28$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2028
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "missing_phone_lock"

    invoke-static {p1, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mMissingPhoneLock:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$3002(Lcom/android/server/policy/PhoneWindowManagerExt;Ljava/lang/String;)Ljava/lang/String;

    .line 2030
    return-void
.end method

.method public synthetic lambda$observe$29$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2036
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string v1, "double_tab_to_wake_up"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    move v2, v3

    :cond_e
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUp:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$2902(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 2038
    return-void
.end method

.method public synthetic lambda$observe$3$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 12
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 1788
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string v1, "double_tab_launch"

    const/4 v2, 0x2

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoubleTapLaunchBehavior:I

    .line 1790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSettings mDoubleTapLaunchBehavior="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoubleTapLaunchBehavior:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_66

    .line 1793
    const/16 v0, 0x8

    .line 1794
    .local v0, "pressType":I
    const/4 v1, 0x3

    .line 1795
    .local v1, "keyCode":I
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    .line 1796
    const/16 v3, 0x8

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/policy/KeyCustomizeManager;->getKeyCustomizeEvent(II)Landroid/view/WindowManager$KeyCustomizeInfo;

    move-result-object v2

    .line 1797
    .local v2, "curInfo":Landroid/view/WindowManager$KeyCustomizeInfo;
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget v5, v5, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoubleTapLaunchBehavior:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4b

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget v5, v5, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoubleTapLaunchBehavior:I

    if-nez v5, :cond_66

    .line 1800
    :cond_4b
    if-eqz v2, :cond_53

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_66

    .line 1801
    :cond_53
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    new-instance v6, Landroid/view/WindowManager$KeyCustomizeInfo;

    const/16 v7, 0x3e8

    const/4 v8, 0x0

    invoke-direct {v6, v7, v4, v8}, Landroid/view/WindowManager$KeyCustomizeInfo;-><init>(III)V

    .line 1805
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1801
    invoke-virtual {v5, v3, v6, v4}, Lcom/android/server/policy/KeyCustomizeManager;->putKeyCustomizeEvent(ILandroid/view/WindowManager$KeyCustomizeInfo;Z)V

    .line 1809
    .end local v0    # "pressType":I
    .end local v1    # "keyCode":I
    .end local v2    # "curInfo":Landroid/view/WindowManager$KeyCustomizeInfo;
    :cond_66
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateDoublePressPowerBehavior()V

    .line 1810
    return-void
.end method

.method public synthetic lambda$observe$30$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2045
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "pen_attach_detach_vibration"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mPenVibrationEnabled:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$2802(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 2047
    return-void
.end method

.method public synthetic lambda$observe$31$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2052
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "spen_feedback_sound"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundEnabled:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$2702(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 2054
    return-void
.end method

.method public synthetic lambda$observe$32$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2059
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "pen_detachment_notification"

    const/4 v2, -0x2

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundFilePath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$2502(Lcom/android/server/policy/PhoneWindowManagerExt;Ljava/lang/String;)Ljava/lang/String;

    .line 2061
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundFilePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$2500(Lcom/android/server/policy/PhoneWindowManagerExt;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$2600(Lcom/android/server/policy/PhoneWindowManagerExt;)Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2062
    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundFilePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$2500(Lcom/android/server/policy/PhoneWindowManagerExt;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$2600(Lcom/android/server/policy/PhoneWindowManagerExt;)Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->getPenSoundPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 2063
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$2600(Lcom/android/server/policy/PhoneWindowManagerExt;)Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$2500(Lcom/android/server/policy/PhoneWindowManagerExt;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->setPenSoundPath(Ljava/lang/String;)V

    .line 2065
    :cond_46
    return-void
.end method

.method public synthetic lambda$observe$33$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2071
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "screen_off_memo"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoEnabled:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$2402(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 2073
    return-void
.end method

.method public synthetic lambda$observe$34$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2079
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "skt_phone20_relax_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSktPhoneRelaxMode:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$2302(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 2081
    return-void
.end method

.method public synthetic lambda$observe$35$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2087
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "tvmode_state"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    move v2, v3

    :cond_e
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mIsTvModeEnabled:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$2202(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 2089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSettings mIsTvModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2090
    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mIsTvModeEnabled:Z
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$2200(Lcom/android/server/policy/PhoneWindowManagerExt;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2089
    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateDoublePressPowerBehavior()V

    .line 2092
    return-void
.end method

.method public synthetic lambda$observe$36$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2096
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "pwrkey_owner_status"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    move v2, v3

    :cond_e
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mIsTvModeDoubleTapEnabled:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$2102(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 2098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSettings mIsTvModeDoubleTapEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2099
    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mIsTvModeDoubleTapEnabled:Z
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$2100(Lcom/android/server/policy/PhoneWindowManagerExt;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2098
    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateDoublePressPowerBehavior()V

    .line 2101
    return-void
.end method

.method public synthetic lambda$observe$37$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2105
    const-string v0, "double_tab_launch_component"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2107
    .local v0, "doubleTapLaunchComponent":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSettings doubleTapLaunchComponent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneWindowManagerExt"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # invokes: Lcom/android/server/policy/PhoneWindowManagerExt;->updateDoubleLaunchInfo(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$2000(Lcom/android/server/policy/PhoneWindowManagerExt;Ljava/lang/String;)V

    .line 2110
    return-void
.end method

.method public synthetic lambda$observe$38$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2116
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string v1, "active_key_on_lockscreen"

    const/4 v2, 0x0

    const/4 v3, -0x3

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    move v2, v3

    :cond_e
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mIsXCoverKeyOnLockScreen:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$1902(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 2119
    return-void
.end method

.method public synthetic lambda$observe$39$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2123
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "short_press_app"

    const/4 v2, -0x3

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mXCoverKeyShortPressLaunchApp:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$1802(Lcom/android/server/policy/PhoneWindowManagerExt;Ljava/lang/String;)Ljava/lang/String;

    .line 2126
    return-void
.end method

.method public synthetic lambda$observe$4$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 1816
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "send_emergency_message"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    goto :goto_10

    :cond_f
    move v3, v2

    :goto_10
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSafetyAssuranceEnabled:Z
    invoke-static {v0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$4602(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 1818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSettings safetyAssuranceEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSafetyAssuranceEnabled:Z
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$4600(Lcom/android/server/policy/PhoneWindowManagerExt;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TRIPLE_TAP_POWER_LAUNCH_PANIC_CALL:Z

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSafetyAssuranceEnabled:Z
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$4600(Lcom/android/server/policy/PhoneWindowManagerExt;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1821
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mSafetyAssurancePowerNumber:I
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$4500(Lcom/android/server/policy/PhoneWindowManagerExt;)I

    move-result v0

    const/4 v1, 0x4

    const/16 v3, 0x66

    if-ne v0, v1, :cond_52

    .line 1822
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 1823
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    goto :goto_61

    .line 1825
    :cond_52
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 1826
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    goto :goto_61

    .line 1829
    :cond_5d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    .line 1831
    :goto_61
    return-void
.end method

.method public synthetic lambda$observe$40$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2130
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "long_press_app"

    const/4 v2, -0x3

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mXCoverKeyLongPressLaunchApp:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$1702(Lcom/android/server/policy/PhoneWindowManagerExt;Ljava/lang/String;)Ljava/lang/String;

    .line 2133
    return-void
.end method

.method public synthetic lambda$observe$41$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2139
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "xcover_top_key_on_lockscreen"

    const/4 v2, 0x0

    const/4 v3, -0x3

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mIsTopKeyOnLockScreen:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$1602(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 2142
    return-void
.end method

.method public synthetic lambda$observe$42$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2146
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "xcover_top_short_press_app"

    const/4 v2, -0x3

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mTopKeyShortPressLaunchApp:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$1502(Lcom/android/server/policy/PhoneWindowManagerExt;Ljava/lang/String;)Ljava/lang/String;

    .line 2149
    return-void
.end method

.method public synthetic lambda$observe$43$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2153
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "xcover_top_long_press_app"

    const/4 v2, -0x3

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mTopKeyLongPressLaunchApp:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$1402(Lcom/android/server/policy/PhoneWindowManagerExt;Ljava/lang/String;)Ljava/lang/String;

    .line 2156
    return-void
.end method

.method public synthetic lambda$observe$44$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2162
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "premium_watch_switch_onoff"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    move v2, v3

    :cond_e
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPremiumWatchOn:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$1302(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 2164
    return-void
.end method

.method public synthetic lambda$observe$47$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2184
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # invokes: Lcom/android/server/policy/PhoneWindowManagerExt;->setNeedDarkSystemBar(Landroid/content/ContentResolver;)V
    invoke-static {v0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$1100(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/ContentResolver;)V

    return-void
.end method

.method public synthetic lambda$observe$48$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2186
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # invokes: Lcom/android/server/policy/PhoneWindowManagerExt;->setNeedDarkSystemBar(Landroid/content/ContentResolver;)V
    invoke-static {v0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$1100(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/ContentResolver;)V

    return-void
.end method

.method public synthetic lambda$observe$49$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2191
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "reserve_battery_on"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    move v2, v3

    :cond_e
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mReserveBatteryMode:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$1002(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 2193
    return-void
.end method

.method public synthetic lambda$observe$5$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 1836
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "send_emergency_message_power_number"

    const/4 v2, 0x3

    const/4 v3, -0x2

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mSafetyAssurancePowerNumber:I
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$4502(Lcom/android/server/policy/PhoneWindowManagerExt;I)I

    .line 1839
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSafetyAssuranceEnabled:Z
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$4600(Lcom/android/server/policy/PhoneWindowManagerExt;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1840
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mSafetyAssurancePowerNumber:I
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$4500(Lcom/android/server/policy/PhoneWindowManagerExt;)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/16 v3, 0x66

    if-ne v0, v1, :cond_2d

    .line 1841
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 1842
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    goto :goto_37

    .line 1844
    :cond_2d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 1845
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    .line 1847
    :goto_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSettings safetyAssurancePowerNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1848
    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mSafetyAssurancePowerNumber:I
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$4500(Lcom/android/server/policy/PhoneWindowManagerExt;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1847
    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    :cond_54
    return-void
.end method

.method public synthetic lambda$observe$50$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2196
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string v1, "enable_reserve_max_mode"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_d

    move v2, v3

    :cond_d
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mEnableReserveBatteryMode:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$902(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 2198
    return-void
.end method

.method public synthetic lambda$observe$51$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2202
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "reserve_battery_on"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    move v2, v3

    :cond_e
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mReserveBatteryMode:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$1002(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 2204
    return-void
.end method

.method public synthetic lambda$observe$52$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2207
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string v1, "enable_reserve_max_mode"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_d

    move v2, v3

    :cond_d
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mEnableReserveBatteryMode:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$902(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 2209
    return-void
.end method

.method public synthetic lambda$observe$53$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2215
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v1, "isBikeMode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSBikeModeOn:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$802(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 2218
    return-void
.end method

.method public synthetic lambda$observe$54$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 8
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2226
    const-string/jumbo v0, "show_button_background"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2229
    .local v0, "buttonShapeEnabled":I
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mButtonShapeEnabled:I
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$700(Lcom/android/server/policy/PhoneWindowManagerExt;)I

    move-result v2

    if-eq v0, v2, :cond_45

    .line 2230
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mButtonShapeEnabled:I
    invoke-static {v2, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$702(Lcom/android/server/policy/PhoneWindowManagerExt;I)I

    .line 2231
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    .line 2233
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2231
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2234
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 2235
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    .line 2237
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2235
    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2240
    :cond_45
    return-void
.end method

.method public synthetic lambda$observe$55$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 8
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 2247
    const-string v0, "bold_text"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2249
    .local v0, "boldFontEnabled":I
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mBoldFontEnabled:I
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$600(Lcom/android/server/policy/PhoneWindowManagerExt;)I

    move-result v2

    if-eq v0, v2, :cond_44

    .line 2250
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mBoldFontEnabled:I
    invoke-static {v2, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$602(Lcom/android/server/policy/PhoneWindowManagerExt;I)I

    .line 2251
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    .line 2253
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2251
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2254
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 2255
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    .line 2257
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2255
    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2260
    :cond_44
    return-void
.end method

.method public synthetic lambda$observe$6$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 1856
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string v1, "access_control_enabled"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    move v2, v3

    :cond_e
    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    .line 1858
    return-void
.end method

.method public synthetic lambda$observe$7$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 1862
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string v1, "access_control_power_button"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPowerKeyBlocked:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$4402(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 1864
    return-void
.end method

.method public synthetic lambda$observe$8$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 1868
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string v1, "access_control_volume_button"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeKeyBlocked:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$4302(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 1870
    return-void
.end method

.method public synthetic lambda$observe$9$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "forced"    # Ljava/lang/Boolean;

    .line 1876
    const-string v0, "any_screen_enabled"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    move v1, v2

    :cond_c
    move v0, v1

    .line 1878
    .local v0, "isOneHandOpEnabled":Z
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$200(Lcom/android/server/policy/PhoneWindowManagerExt;)Lcom/android/server/policy/OneHandOpPolicyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/policy/OneHandOpPolicyManager;->setOneHandOpEnabled(Z)V

    .line 1879
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootCompleted:Z

    if-eqz v1, :cond_34

    .line 1880
    if-eqz v0, :cond_2b

    .line 1881
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$200(Lcom/android/server/policy/PhoneWindowManagerExt;)Lcom/android/server/policy/OneHandOpPolicyManager;

    move-result-object v1

    const-string/jumbo v2, "settingObserver"

    invoke-virtual {v1, v2}, Lcom/android/server/policy/OneHandOpPolicyManager;->startService(Ljava/lang/String;)V

    goto :goto_34

    .line 1883
    :cond_2b
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$200(Lcom/android/server/policy/PhoneWindowManagerExt;)Lcom/android/server/policy/OneHandOpPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/policy/OneHandOpPolicyManager;->stopService()V

    .line 1886
    :cond_34
    :goto_34
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateMultiTapHandlerForOneHandOp(Z)V

    .line 1887
    return-void
.end method

.method observe()V
    .registers 5

    .line 1755
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1759
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "navigationbar_current_color"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$2HyhPRHsDAQ1mEuMlm6WYDMU_5E;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$2HyhPRHsDAQ1mEuMlm6WYDMU_5E;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 1768
    const-string/jumbo v1, "navigation_bar_button_to_hide_keyboard"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$TFoX9DMGh9SE7CcSJ52Bjh5XRQE;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$TFoX9DMGh9SE7CcSJ52Bjh5XRQE;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 1776
    const-string/jumbo v1, "reduce_animations"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$HkDgB1Y5u2EVTBWUY0LlIhDTqWU;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$HkDgB1Y5u2EVTBWUY0LlIhDTqWU;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 1783
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_TAP_SIDE_KEY:Z

    if-nez v1, :cond_47

    .line 1785
    const-string v1, "double_tab_launch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$_Rze4ISXzI6swkLPeSc3QYJTbLk;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$_Rze4ISXzI6swkLPeSc3QYJTbLk;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 1813
    :cond_47
    const-string/jumbo v1, "send_emergency_message"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$GcQZN-T5hd5ryxzH1JH_NRibJLc;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$GcQZN-T5hd5ryxzH1JH_NRibJLc;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 1833
    const-string/jumbo v1, "send_emergency_message_power_number"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$Y1NFybjNz1DppZmKb1PJtPiQjOI;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$Y1NFybjNz1DppZmKb1PJtPiQjOI;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 1853
    const-string v1, "access_control_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$6u6S-jbL1rA_oX36e3oqQ5-Ohr8;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$6u6S-jbL1rA_oX36e3oqQ5-Ohr8;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 1859
    const-string v1, "access_control_power_button"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$UoemmR8VcPpUHA-y5S7-o38xbPs;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$UoemmR8VcPpUHA-y5S7-o38xbPs;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 1865
    const-string v1, "access_control_volume_button"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$ueaKELx9bhaROSoasYTFPLsLvLM;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$ueaKELx9bhaROSoasYTFPLsLvLM;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 1873
    const-string v1, "any_screen_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$XYyInz7hBbe3HObb8ICTcB1kidQ;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$XYyInz7hBbe3HObb8ICTcB1kidQ;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 1888
    const-string/jumbo v1, "one_handed_op_wakeup_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$Di3xHIfNOq9p0159FPBzmZnbea8;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$Di3xHIfNOq9p0159FPBzmZnbea8;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 1901
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_MANAGER:Z

    if-eqz v1, :cond_ce

    .line 1902
    const-string/jumbo v1, "setting_tsp_threshold"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$eAsj18iEoXm8AswmrlqY3OL1vQw;

    invoke-direct {v2, p0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$eAsj18iEoXm8AswmrlqY3OL1vQw;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 1907
    const-string/jumbo v1, "setting_tsp_debug"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$xl1selBiWJZN6ZePqg10NeFYm5o;

    invoke-direct {v2, p0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$xl1selBiWJZN6ZePqg10NeFYm5o;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 1914
    :cond_ce
    const-string/jumbo v1, "navigation_bar_gesture_while_hidden"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$NV0qKZcoKZFzSuOC44BDJUSlB-4;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$NV0qKZcoKZFzSuOC44BDJUSlB-4;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 1918
    const-string/jumbo v1, "navigation_bar_gesture_detail_type"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$Fw4z-UYqetoZ6gzlp-ZnIWhYhI8;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$Fw4z-UYqetoZ6gzlp-ZnIWhYhI8;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 1923
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_LONG_PRESS_SIDE_KEY:Z

    if-eqz v1, :cond_fe

    .line 1924
    const-string v1, "function_key_config_longpress_type"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$yytAAA4QqEq6hAmtm8uYS6vFF98;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$yytAAA4QqEq6hAmtm8uYS6vFF98;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 1932
    :cond_fe
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_TAP_SIDE_KEY:Z

    if-eqz v1, :cond_13a

    .line 1933
    const-string v1, "function_key_config_doublepress"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$kUA15xQBFDorA5dbcbtOS8WCpGI;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$kUA15xQBFDorA5dbcbtOS8WCpGI;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 1942
    const-string v1, "function_key_config_doublepress_type"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$uLBv0plFiXeWlOV-voRpifflMrg;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$uLBv0plFiXeWlOV-voRpifflMrg;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 1951
    const-string v1, "function_key_config_doublepress_value"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$aejkgzgBfsYz5xfB2siNCqq2xJ8;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$aejkgzgBfsYz5xfB2siNCqq2xJ8;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 1960
    const-string v1, "Flashlight_brightness_level"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$YaUWGEt8iL8S3lyvs04lUI6sr-o;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$YaUWGEt8iL8S3lyvs04lUI6sr-o;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 1969
    :cond_13a
    const-string/jumbo v1, "setupwizard_bixby_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$vR56TdLHttHEdvdco9xvE9R4mvI;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$vR56TdLHttHEdvdco9xvE9R4mvI;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 1975
    const-string/jumbo v1, "volumekey_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$u7YSRcFFYPBYVNmc26Q4dBoI6y8;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$u7YSRcFFYPBYVNmc26Q4dBoI6y8;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 1983
    const-string v1, "anykey_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$lHfEWT2cUZIZDZC1_tgO0bxsbng;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$lHfEWT2cUZIZDZC1_tgO0bxsbng;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 1990
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_EMERGENCY_MODE:Z

    if-eqz v1, :cond_178

    .line 1991
    const-string v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$2mpmJUltLnXdnZ86tgW1ttZ-rxw;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$2mpmJUltLnXdnZ86tgW1ttZ-rxw;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2002
    :cond_178
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CHILE_CMAS_DIALOG:Z

    if-eqz v1, :cond_18a

    .line 2003
    const-string v1, "chile_cmas_popup_on_top"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$3jmMfQJSc6QfOBRTwJYBUaErJUM;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$3jmMfQJSc6QfOBRTwJYBUaErJUM;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2011
    :cond_18a
    const-string/jumbo v1, "haptic_feedback_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$LFtQt1y9jPVE8v2i3PH5ohHQDUs;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$LFtQt1y9jPVE8v2i3PH5ohHQDUs;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2017
    const-string v1, "default_assist_vibration_feedback"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$UTY4IN-SMT6c6JZhUeEMwvUO6BU;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$UTY4IN-SMT6c6JZhUeEMwvUO6BU;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2024
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_LUC_SUPPORT_MISSING_PHONE_LOCK:Z

    if-eqz v1, :cond_1ba

    .line 2025
    const-string/jumbo v1, "missing_phone_lock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$bZYMN6OGKmvFqbrGk_uhYrALeZU;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$bZYMN6OGKmvFqbrGk_uhYrALeZU;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2033
    :cond_1ba
    const-string v1, "double_tab_to_wake_up"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$iY0PGW0Saf7i_NZIE6bdZBVxf9M;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$iY0PGW0Saf7i_NZIE6bdZBVxf9M;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2041
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SPEN:Z

    if-eqz v1, :cond_1f9

    .line 2042
    const-string/jumbo v1, "pen_attach_detach_vibration"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$W5HIq-ARf-KdXAYJ6DJvFr3JyzA;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$W5HIq-ARf-KdXAYJ6DJvFr3JyzA;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2049
    const-string/jumbo v1, "spen_feedback_sound"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$oFGr2VGpYEtKNf61B293V-shtBY;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$oFGr2VGpYEtKNf61B293V-shtBY;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2056
    const-string/jumbo v1, "pen_detachment_notification"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$hqL1D3tkAA097-l3iYQ0k5e-B7w;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$hqL1D3tkAA097-l3iYQ0k5e-B7w;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2067
    :cond_1f9
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SPEN_SCREEN_OFF_MEMO:Z

    if-eqz v1, :cond_20c

    .line 2068
    const-string/jumbo v1, "screen_off_memo"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$dnQqnclI4xBjggOQ21wlPYYmXI0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$dnQqnclI4xBjggOQ21wlPYYmXI0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2075
    :cond_20c
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SKT_PHONE_RELAX_MODE:Z

    if-eqz v1, :cond_21f

    .line 2076
    const-string/jumbo v1, "skt_phone20_relax_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$DKEcyTx_a0QQr1i9G5GPUokJZJ0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$DKEcyTx_a0QQr1i9G5GPUokJZJ0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2083
    :cond_21f
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_TAP_POWER_TV_MODE:Z

    if-eqz v1, :cond_24f

    .line 2084
    const-string/jumbo v1, "tvmode_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$g1nuNQpIi3ajR9Wrxg7q5Qh10uA;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$g1nuNQpIi3ajR9Wrxg7q5Qh10uA;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2093
    const-string/jumbo v1, "pwrkey_owner_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$zOb5vHAm9b4QQSLnYhbHX9YoBhE;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$zOb5vHAm9b4QQSLnYhbHX9YoBhE;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2102
    const-string v1, "double_tab_launch_component"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$Cx39zg5jxNYzZZSgOWjXafPAPsg;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$Cx39zg5jxNYzZZSgOWjXafPAPsg;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2112
    :cond_24f
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v1, :cond_27f

    .line 2113
    const-string v1, "active_key_on_lockscreen"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$u9nOwvPXy-2ZSMEkRRrzYRjeeiY;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$u9nOwvPXy-2ZSMEkRRrzYRjeeiY;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2120
    const-string/jumbo v1, "short_press_app"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$OVOp17bJIFjf8qIa2g3Qc6hKVzE;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$OVOp17bJIFjf8qIa2g3Qc6hKVzE;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2127
    const-string/jumbo v1, "long_press_app"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$kVPOzTAy0RfvHeRYkM8QJNYwfYY;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$kVPOzTAy0RfvHeRYkM8QJNYwfYY;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2135
    :cond_27f
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_XCOVER_AND_TOP_KEY:Z

    if-eqz v1, :cond_2b0

    .line 2136
    const-string/jumbo v1, "xcover_top_key_on_lockscreen"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$3ecwijQtJ-4DnaLcEcKucFio_QY;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$3ecwijQtJ-4DnaLcEcKucFio_QY;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2143
    const-string/jumbo v1, "xcover_top_short_press_app"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$7g1deCWXW0R6gsZg4vDlToIBW9g;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$7g1deCWXW0R6gsZg4vDlToIBW9g;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2150
    const-string/jumbo v1, "xcover_top_long_press_app"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$nvbJfxAX60dcpm6BWGI8Fxre_ss;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$nvbJfxAX60dcpm6BWGI8Fxre_ss;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2158
    :cond_2b0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_PREMIUM_WATCH:Z

    if-eqz v1, :cond_2c3

    .line 2159
    const-string/jumbo v1, "premium_watch_switch_onoff"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$EvEh7HpexoO16ZBEmLoyszAVRpQ;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$EvEh7HpexoO16ZBEmLoyszAVRpQ;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2182
    :cond_2c3
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_BLUR_WALLPAPER_BACKGROUND_APPEARANCE:Z

    if-eqz v1, :cond_2e5

    .line 2183
    const-string/jumbo v1, "need_dark_statusbar"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$cGVnOGSI5swWlkMX0HoAqlIwE94;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$cGVnOGSI5swWlkMX0HoAqlIwE94;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2185
    const-string/jumbo v1, "need_dark_navigationbar"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$HSSyj1m53T3f_mwEC8hDUDFe-to;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$HSSyj1m53T3f_mwEC8hDUDFe-to;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2188
    :cond_2e5
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_DOWNLOADABLE_RESERVE_BATTERY_MODE:Z

    const-string v2, "enable_reserve_max_mode"

    const-string/jumbo v3, "reserve_battery_on"

    if-eqz v1, :cond_307

    .line 2189
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$POwmLBJV_kOXSehTj8dYT-j6ZdQ;

    invoke-direct {v3, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$POwmLBJV_kOXSehTj8dYT-j6ZdQ;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2194
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$vbCiJyU5wtKEqbDV-5Wj_UsRVjc;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$vbCiJyU5wtKEqbDV-5Wj_UsRVjc;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    goto :goto_323

    .line 2199
    :cond_307
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_RESERVE_BATTERY_MODE:Z

    if-eqz v1, :cond_323

    .line 2200
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$r3DsbwVIVHFieVIBvC0WRrEy-Rg;

    invoke-direct {v3, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$r3DsbwVIVHFieVIBvC0WRrEy-Rg;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2205
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$KuJTMzyKaXoxlQpsUnBsCntzthM;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$KuJTMzyKaXoxlQpsUnBsCntzthM;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2211
    :cond_323
    :goto_323
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_SBIKE_MODE:Z

    if-eqz v1, :cond_336

    .line 2212
    const-string/jumbo v1, "isBikeMode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$UUbsXa-InLvi9qb2tTDodV5PVP8;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$UUbsXa-InLvi9qb2tTDodV5PVP8;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2223
    :cond_336
    const-string/jumbo v1, "show_button_background"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$iunQ1yxyzx_yDKSVoce2_0SYy7I;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$iunQ1yxyzx_yDKSVoce2_0SYy7I;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2244
    const-string v1, "bold_text"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$V49CzUBHeQR4KImVkDDvY4Fhez0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$V49CzUBHeQR4KImVkDDvY4Fhez0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 2262
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 2266
    if-nez p2, :cond_3

    .line 2267
    return-void

    .line 2270
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$500(Lcom/android/server/policy/PhoneWindowManagerExt;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2271
    :try_start_a
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->mSettingsUriToCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2272
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_39

    .line 2273
    const-string v1, "PhoneWindowManagerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    :cond_39
    monitor-exit v0

    .line 2276
    return-void

    .line 2275
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_a .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method onForceUpdate(Landroid/net/Uri;Z)V
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "forced"    # Z

    .line 2300
    if-nez p1, :cond_3

    .line 2301
    return-void

    .line 2304
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$500(Lcom/android/server/policy/PhoneWindowManagerExt;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2305
    :try_start_a
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->mSettingsUriToCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2306
    monitor-exit v0

    .line 2307
    return-void

    .line 2306
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2279
    .local p2, "behavior":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2283
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->mSettingsUriToCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2284
    return-void
.end method

.method updateSettings()V
    .registers 2

    .line 2287
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->updateSettings(Z)V

    .line 2288
    return-void
.end method

.method updateSettings(Z)V
    .registers 7
    .param p1, "forced"    # Z

    .line 2292
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$500(Lcom/android/server/policy/PhoneWindowManagerExt;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2293
    :try_start_7
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->mSettingsUriToCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2294
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2295
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    goto :goto_11

    .line 2296
    :cond_2b
    monitor-exit v0

    .line 2297
    return-void

    .line 2296
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_2d

    throw v1
.end method
