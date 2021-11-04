.class Lcom/android/server/aod/AODManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mAODLowPowerUri:Landroid/net/Uri;

.field private final mAODModeUri:Landroid/net/Uri;

.field private final mAODPowerSavingModeUri:Landroid/net/Uri;

.field private final mAODShowStateUri:Landroid/net/Uri;

.field private final mDozeAlwaysOnUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService;Landroid/os/Handler;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/aod/AODManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 636
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 637
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 630
    const-string v0, "aod_show_state"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mAODShowStateUri:Landroid/net/Uri;

    .line 631
    const-string v0, "aod_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mAODModeUri:Landroid/net/Uri;

    .line 632
    const-string v0, "doze_always_on"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mDozeAlwaysOnUri:Landroid/net/Uri;

    .line 633
    const-string/jumbo v0, "low_power"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mAODLowPowerUri:Landroid/net/Uri;

    .line 634
    const-string/jumbo v0, "ultra_powersaving_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mAODPowerSavingModeUri:Landroid/net/Uri;

    .line 638
    return-void
.end method


# virtual methods
.method observe()V
    .registers 5

    .line 642
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$1700(Lcom/android/server/aod/AODManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 645
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "aod_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 648
    const-string v1, "aod_show_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 649
    const-string v1, "aod_tap_to_show_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 650
    const-string v1, "fingerprint_screen_lock"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 651
    const-string v1, "fingerprint_screen_off_icon_aod"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 653
    const-string v1, "doze_always_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 655
    const-string/jumbo v1, "low_power"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 656
    const-string/jumbo v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 658
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    const-string/jumbo v2, "observe"

    # invokes: Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/aod/AODManagerService;->access$400(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;)V

    .line 659
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->updateSettings()V
    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->access$1800(Lcom/android/server/aod/AODManagerService;)V

    .line 660
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 14
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 664
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mAODShowStateUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mAODLowPowerUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mAODPowerSavingModeUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 665
    .local v0, "isNeedToCheckPackageName":Z
    :goto_1b
    const/4 v1, 0x0

    .line 666
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_71

    .line 667
    const/4 v2, 0x0

    .line 668
    .local v2, "cursor":Landroid/database/Cursor;
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/aod/AODManagerService;->access$1700(Lcom/android/server/aod/AODManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 669
    .local v3, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v10, "package"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v6

    .line 671
    .local v6, "projection":[Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    move-object v5, p2

    :try_start_35
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v2, v4

    .line 672
    if-eqz v2, :cond_51

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 673
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_50} :catch_5a
    .catchall {:try_start_35 .. :try_end_50} :catchall_58

    move-object v1, v4

    .line 678
    :cond_51
    if-eqz v2, :cond_71

    .line 679
    :goto_53
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 680
    const/4 v2, 0x0

    goto :goto_71

    .line 678
    :catchall_58
    move-exception v4

    goto :goto_6a

    .line 675
    :catch_5a
    move-exception v4

    .line 676
    .local v4, "e":Ljava/lang/Exception;
    :try_start_5b
    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_5b .. :try_end_66} :catchall_58

    .line 678
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_71

    .line 679
    goto :goto_53

    .line 678
    :goto_6a
    if-eqz v2, :cond_70

    .line 679
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 680
    const/4 v2, 0x0

    .line 682
    :cond_70
    throw v4

    .line 685
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "projection":[Ljava/lang/String;
    :cond_71
    :goto_71
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mAODShowStateUri:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 686
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v2}, Lcom/android/server/aod/AODManagerService;->updateBatteryStats()V

    goto/16 :goto_123

    .line 687
    :cond_80
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mDozeAlwaysOnUri:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, " , called by package : "

    const-string/jumbo v4, "onChange : "

    if-eqz v2, :cond_cc

    .line 688
    if-eqz v0, :cond_ae

    .line 689
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/aod/AODManagerService;->access$400(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;)V

    goto :goto_c6

    .line 691
    :cond_ae
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/aod/AODManagerService;->access$400(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;)V

    .line 693
    :goto_c6
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->updateDozeAlwaysOn()V
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$1900(Lcom/android/server/aod/AODManagerService;)V

    goto :goto_123

    .line 695
    :cond_cc
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mCoverController:Lcom/android/server/aod/AODSCoverController;
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$2000(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODSCoverController;

    move-result-object v2

    if-eqz v2, :cond_e5

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mAODModeUri:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 696
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mCoverController:Lcom/android/server/aod/AODSCoverController;
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$2000(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODSCoverController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/aod/AODSCoverController;->refresh()V

    .line 698
    :cond_e5
    if-eqz v0, :cond_106

    .line 699
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/aod/AODManagerService;->access$400(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;)V

    goto :goto_11e

    .line 701
    :cond_106
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/aod/AODManagerService;->access$400(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;)V

    .line 703
    :goto_11e
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->updateSettings()V
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$1800(Lcom/android/server/aod/AODManagerService;)V

    .line 705
    :goto_123
    return-void
.end method
