.class final Lcom/android/server/ibs/IbsQuickDim$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "IbsQuickDim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IbsQuickDim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ibs/IbsQuickDim;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IbsQuickDim;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 429
    iput-object p1, p0, Lcom/android/server/ibs/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    .line 430
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 431
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 10
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 435
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$1900(Lcom/android/server/ibs/IbsQuickDim;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_off_timeout"

    const/16 v3, 0x7530

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    int-to-long v1, v1

    # setter for: Lcom/android/server/ibs/IbsQuickDim;->mScreenOffTimeoutSetting:J
    invoke-static {v0, v1, v2}, Lcom/android/server/ibs/IbsQuickDim;->access$1802(Lcom/android/server/ibs/IbsQuickDim;J)J

    .line 438
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$1900(Lcom/android/server/ibs/IbsQuickDim;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "intelligent_sleep_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    move v1, v2

    goto :goto_28

    :cond_27
    move v1, v3

    :goto_28
    # setter for: Lcom/android/server/ibs/IbsQuickDim;->mSmartStayEnabledSetting:Z
    invoke-static {v0, v1}, Lcom/android/server/ibs/IbsQuickDim;->access$2002(Lcom/android/server/ibs/IbsQuickDim;Z)Z

    .line 442
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mScreenOffTimeoutSetting:J
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$1800(Lcom/android/server/ibs/IbsQuickDim;)J

    move-result-wide v0

    const-wide/16 v5, 0x7530

    cmp-long v0, v0, v5

    if-ltz v0, :cond_69

    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mSmartStayEnabledSetting:Z
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$2000(Lcom/android/server/ibs/IbsQuickDim;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_69

    .line 447
    :cond_40
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mQuickdimEnable:Z
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$000(Lcom/android/server/ibs/IbsQuickDim;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 448
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mScreenOffTimeoutSetting:J
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$1800(Lcom/android/server/ibs/IbsQuickDim;)J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-ltz v0, :cond_7e

    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mSmartStayEnabledSetting:Z
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$2000(Lcom/android/server/ibs/IbsQuickDim;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 449
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # setter for: Lcom/android/server/ibs/IbsQuickDim;->mQuickdimEnable:Z
    invoke-static {v0, v2}, Lcom/android/server/ibs/IbsQuickDim;->access$002(Lcom/android/server/ibs/IbsQuickDim;Z)Z

    .line 450
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$800(Lcom/android/server/ibs/IbsQuickDim;)Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->sendEmptyMessage(I)Z

    goto :goto_7e

    .line 443
    :cond_69
    :goto_69
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    const/4 v1, 0x2

    # setter for: Lcom/android/server/ibs/IbsQuickDim;->mQuickDimMode:I
    invoke-static {v0, v1}, Lcom/android/server/ibs/IbsQuickDim;->access$402(Lcom/android/server/ibs/IbsQuickDim;I)I

    .line 444
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$800(Lcom/android/server/ibs/IbsQuickDim;)Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->sendEmptyMessage(I)Z

    .line 445
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # setter for: Lcom/android/server/ibs/IbsQuickDim;->mQuickdimEnable:Z
    invoke-static {v0, v3}, Lcom/android/server/ibs/IbsQuickDim;->access$002(Lcom/android/server/ibs/IbsQuickDim;Z)Z

    .line 455
    :cond_7e
    :goto_7e
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mQuickDimMode:I
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$400(Lcom/android/server/ibs/IbsQuickDim;)I

    move-result v0

    if-eq v0, v2, :cond_95

    .line 456
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$1900(Lcom/android/server/ibs/IbsQuickDim;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness"

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, v0, Lcom/android/server/ibs/IbsQuickDim;->mBrightness:I

    .line 458
    :cond_95
    return-void
.end method
