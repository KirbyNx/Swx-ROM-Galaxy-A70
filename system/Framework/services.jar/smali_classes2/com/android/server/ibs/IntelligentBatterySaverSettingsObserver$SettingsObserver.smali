.class Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "IntelligentBatterySaverSettingsObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    .line 29
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 30
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 34
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    # getter for: Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->access$000(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ibs_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_20

    .line 35
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    # getter for: Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;
    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->access$100(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;)Lcom/android/server/ibs/IntelligentBatterySaverService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-virtual {v0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->setIBSFastDrainActionEnable(Z)V

    goto :goto_2c

    .line 37
    :cond_20
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    # getter for: Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;
    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->access$100(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;)Lcom/android/server/ibs/IntelligentBatterySaverService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->setIBSFastDrainActionEnable(Z)V

    .line 39
    :goto_2c
    return-void
.end method
