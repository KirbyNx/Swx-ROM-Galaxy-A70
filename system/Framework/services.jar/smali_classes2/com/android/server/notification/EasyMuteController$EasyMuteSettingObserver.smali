.class Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;
.super Landroid/database/ContentObserver;
.source "EasyMuteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/EasyMuteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EasyMuteSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/EasyMuteController;


# direct methods
.method constructor <init>(Lcom/android/server/notification/EasyMuteController;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 207
    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->this$0:Lcom/android/server/notification/EasyMuteController;

    .line 208
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 209
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2
    .param p1, "selfChange"    # Z

    .line 213
    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->update()V

    .line 214
    return-void
.end method

.method public update()V
    .registers 8

    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "isOverTurnOn":Z
    iget-object v1, p0, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->this$0:Lcom/android/server/notification/EasyMuteController;

    .line 219
    # getter for: Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/notification/EasyMuteController;->access$300(Lcom/android/server/notification/EasyMuteController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "master_motion"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    move v1, v3

    .line 221
    .local v1, "isMotionOn":Z
    :goto_1a
    if-eqz v1, :cond_31

    .line 222
    iget-object v5, p0, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->this$0:Lcom/android/server/notification/EasyMuteController;

    .line 223
    # getter for: Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/notification/EasyMuteController;->access$300(Lcom/android/server/notification/EasyMuteController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 222
    const-string/jumbo v6, "motion_overturn"

    invoke-static {v5, v6, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_30

    move v3, v2

    :cond_30
    move v0, v3

    .line 225
    :cond_31
    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->this$0:Lcom/android/server/notification/EasyMuteController;

    # invokes: Lcom/android/server/notification/EasyMuteController;->setEasyMuteEnabled(ZZ)V
    invoke-static {v2, v1, v0}, Lcom/android/server/notification/EasyMuteController;->access$400(Lcom/android/server/notification/EasyMuteController;ZZ)V

    .line 226
    return-void
.end method
